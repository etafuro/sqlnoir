
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import sqlite3
import re
import sys
from pathlib import Path

# 1) Riconoscimento file JS/TS con array di statements
def is_js_array_with_sql(text: str) -> bool:
    return bool(re.search(r'export\s+default\s*\[', text, flags=re.IGNORECASE))

# 2) Estrazione SOLO da backtick: evita di catturare le stringhe interne agli INSERT
def extract_sql_from_js_array(text: str) -> str:
    """
    Estrae le stringhe SQL dai backtick (`...`) dell'array JS/TS.
    Non cattura apici singoli/doppi per evitare di spezzare gli INSERT.
    """
    # Rimuove commenti singola riga // ...
    text = re.sub(r'//.*', '', text)

    # Rimuove "export default" e parentesi quadre esterne
    text = re.sub(r'export\s+default', '', text, flags=re.IGNORECASE)
    text = re.sub(r'^\s*\[\s*', '', text, flags=re.DOTALL)
    text = re.sub(r'\s*\]\s*;?\s*$', '', text, flags=re.DOTALL)

    # Prende esclusivamente i contenuti tra backtick
    sql_blocks = [m.group(1) for m in re.finditer(r'`([^`]*)`', text, flags=re.DOTALL)]

    # Se non trovati, fallback: restituisce il testo (magari non è un array con backtick)
    if not sql_blocks:
        return text

    # Normalizza: assicura ';' finale su ciascun blocco
    normalized = []
    for s in sql_blocks:
        # gestisce \n \t ecc. senza rompere i contenuti
        try:
            s = s.encode('utf-8').decode('unicode_escape')
        except Exception:
            pass
        s = s.strip()
        if not s:
            continue
        if not s.endswith(';'):
            s += ';'
        normalized.append(s)

    return '\n'.join(normalized)

# 3) Carica il testo SQL (dal file .sql o dal .txt in formato array JS)
def load_sql_text(input_path: Path) -> str:
    txt = input_path.read_text(encoding='utf-8')
    if is_js_array_with_sql(txt):
        return extract_sql_from_js_array(txt)
    return txt

# 4) Split robusto su ';' **fuori** da stringhe/commenti
def split_sql_statements(sql_text: str) -> list:
    """
    Divide il testo in statement terminati da ';', ignorando i ';' dentro stringhe
    (apici singoli/doppi) e commenti (-- e /* */). In questo modo gli INSERT con
    molte VALUES rimangono **un solo statement**.
    """
    statements = []
    current = []

    in_squote = False        # dentro '...'
    in_dquote = False        # dentro "..."
    in_line_comment = False  # dentro -- fino a fine riga
    in_block_comment = False # dentro /* ... */

    i = 0
    n = len(sql_text)
    prev = ''

    while i < n:
        ch = sql_text[i]
        nxt = sql_text[i+1] if i+1 < n else ''

        # Commento di linea
        if in_line_comment:
            current.append(ch)
            if ch == '\n':
                in_line_comment = False
            i += 1
            prev = ch
            continue

        # Commento di blocco
        if in_block_comment:
            current.append(ch)
            if ch == '*' and nxt == '/':
                current.append(nxt)
                in_block_comment = False
                i += 2
                prev = '/'
                continue
            i += 1
            prev = ch
            continue

        # Entrata commenti solo fuori da stringhe
        if not in_squote and not in_dquote:
            if ch == '-' and nxt == '-':
                current.append(ch); current.append(nxt)
                in_line_comment = True
                i += 2; prev = '-'
                continue
            if ch == '/' and nxt == '*':
                current.append(ch); current.append(nxt)
                in_block_comment = True
                i += 2; prev = '*'
                continue

        # Gestione stringhe
        if not in_dquote and ch == "'" and prev != '\\':
            in_squote = not in_squote
            current.append(ch)
            i += 1; prev = ch
            continue

        if not in_squote and ch == '"' and prev != '\\':
            in_dquote = not in_dquote
            current.append(ch)
            i += 1; prev = ch
            continue

        # Split su ';' solo se NON dentro stringhe/commenti
        if ch == ';' and not in_squote and not in_dquote and not in_line_comment and not in_block_comment:
            stmt = ''.join(current).strip()
            if stmt:
                statements.append(stmt + ';')
            current = []
        else:
            current.append(ch)

        prev = ch
        i += 1

    # Ultimo frammento (anche se non termina con ';')
    tail = ''.join(current).strip()
    if tail:
        statements.append(tail)

    return statements

# 5) Esecuzione (usa executescript per affidabilità; split serve per echo/dry-run)
def execute_sql(db_path: Path, sql_text: str, stop_on_error: bool, echo: bool, dry_run: bool) -> int:
    stmts = split_sql_statements(sql_text)

    if echo or dry_run:
        print(f"--- {len(stmts)} statement individuati ---")
        for i, s in enumerate(stmts, 1):
            print(f"\n-- Statement #{i} --\n{s}")

    if dry_run:
        print("\n[Esecuzione simulata] Nessuno statement è stato eseguito.")
        return len(stmts)

    conn = sqlite3.connect(str(db_path))
    conn.execute("PRAGMA foreign_keys = ON;")
    try:
        with conn:
            # Esegui il blocco intero: gestisce correttamente DDL + INSERT grandi
            conn.executescript(sql_text)
        print(f"\n[Esecuzione completata] {len(stmts)} statement (approssimativi) eseguiti.")
        return len(stmts)
    except sqlite3.Error as e:
        print(f"\n[ERRORE SQLite] {e.__class__.__name__}: {e}")
        if stop_on_error:
            sys.exit(1)
        else:
            # Fallback: prova singolarmente per individuare lo statement problematico
            print("[Fallback] Esecuzione singola degli statement...")
            executed = 0
            with conn:
                for i, s in enumerate(stmts, 1):
                    try:
                        if echo:
                            print(f"\n-- Eseguo statement #{i} --\n{s}")
                        conn.execute("BEGIN;")
                        conn.executescript(s)
                        conn.execute("COMMIT;")
                        executed += 1
                    except sqlite3.Error as e2:
                        conn.execute("ROLLBACK;")
                        print(f"[Errore #{i}] {e2.__class__.__name__}: {e2}")
                        if stop_on_error:
                            print("[Interruzione per --stop-on-error]")
                            break
            print(f"\n[Esecuzione parziale] {executed}/{len(stmts)} statement eseguiti.")
            return executed
    finally:
        conn.close()

def main():
    parser = argparse.ArgumentParser(
        description="Esegui gli statement SQL da un file contro un database SQLite."
    )
    parser.add_argument("--db", required=True, type=Path,
                        help="Percorso del file .sqlite/.db (verrà creato se non esiste).")
    parser.add_argument("--input", required=True, type=Path,
                        help="File con gli statement SQL (.sql oppure .txt con array JS).")
    parser.add_argument("--stop-on-error", action="store_true",
                        help="Ferma l'esecuzione al primo errore.")
    parser.add_argument("--echo", action="store_true",
                        help="Stampa gli statement prima di eseguirli.")
    parser.add_argument("--dry-run", action="store_true",
                        help="Mostra cosa verrebbe eseguito senza applicare modifiche.")

    args = parser.parse_args()

    if not args.input.exists():
        print(f"[Errore] File di input non trovato: {args.input}")
        sys.exit(2)

    try:
        sql_text = load_sql_text(args.input)
    except Exception as e:
        print(f"[Errore lettura input] {e.__class__.__name__}: {e}")
        sys.exit(3)

    execute_sql(
        db_path=args.db,
        sql_text=sql_text,
        stop_on_error=args.stop_on_error,
        echo=args.echo,
        dry_run=args.dry_run
    )

if __name__ == "__main__":
    main()
