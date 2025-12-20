SQL Noir 🕵️‍♂️

SQL Noir è un gioco investigativo interattivo basato su SQL, pensato per imparare e migliorare le proprie competenze di interrogazione di database attraverso la risoluzione di casi кримinali in stile noir.

Il progetto combina:

una narrazione investigativa

database SQLite

query SQL reali

un’interfaccia web statica utilizzabile direttamente dal browser

Ideale per studenti, sviluppatori, docenti o appassionati di logica e investigazione.

🎯 Obiettivo del progetto

L’obiettivo di SQL Noir è risolvere uno o più casi investigativi analizzando dati strutturati e scrivendo query SQL corrette per:

individuare sospettati

ricostruire eventi

incrociare interrogatori

verificare alibi

arrivare a una conclusione logica e motivata

Non servono backend, server o installazioni complesse: tutto gira in locale nel browser.

🗂️ Struttura del progetto
sqlnoir/
├── index.html              # Interfaccia principale del gioco
├── summary.html            # Riepilogo / conclusione del caso
├── LICENSE                 # Licenza MIT
├── archive/
│   └── level1.sqlite       # Database SQLite del primo livello
├── sql/
│   ├── scene_del_crimine.sql
│   ├── sospettati.sql
│   └── interrogatori.sql   # Query di esempio / supporto
├── translates/
│   ├── brief.txt           # Introduzione narrativa
│   ├── case-001-it.txt     # Caso 001 (italiano)
│   ├── case-002-it.txt
│   ├── case-001_eng.sqlite # DB versione inglese
│   └── case-001_ita.sqlite # DB versione italiana
└── .gitignore

🧩 Come funziona

Apri index.html in un browser moderno

Leggi il brief del caso

Analizza le tabelle del database SQLite

Scrivi ed esegui query SQL

Interpreta i risultati

Risolvi il caso

Il motore SQL è basato su sql.js (SQLite compilato in WebAssembly).

🚀 Avvio rapido

Non è richiesta alcuna installazione.

Metodo consigliato

Apri direttamente index.html con:

Chrome

Firefox

Edge

Alternativa (consigliata per sviluppo)

Servire i file tramite un server locale:

python -m http.server


Poi visita:

http://localhost:8000

📚 Competenze richieste

SQL base (SELECT, WHERE, JOIN, GROUP BY)

Capacità di analisi logica

Curiosità investigativa 😉

Il progetto è didattico, ma non banale: le soluzioni richiedono ragionamento.

🌍 Lingue supportate

🇮🇹 Italiano

🇬🇧 Inglese (in parte)

La struttura è predisposta per l’aggiunta di nuove traduzioni.

🛠️ Tecnologie utilizzate

HTML5

JavaScript

SQLite

sql.js (WebAssembly)

CSS (base)

🧠 Possibili estensioni

Nuovi casi investigativi

Livelli di difficoltà

Timer o punteggi

Modalità “sfida”

Export delle query

Supporto mobile avanzato

📄 Licenza

Questo progetto è distribuito sotto MIT License.

MIT License

Copyright (c) 2025
- Hristo Bogoev
- Enrico Tafuro


Il software è fornito “così com’è”, senza alcuna garanzia.
Può essere utilizzato, modificato e distribuito liberamente nel rispetto della licenza.

👥 Autori

Hristo Bogoev – ideazione e sviluppo

Enrico Tafuro – ideazione, sviluppo e contenuti investigativi

⭐ Contributi

Pull request, idee e nuovi casi sono benvenuti.
SQL Noir nasce per crescere.

Se vuoi, nel prossimo messaggio posso:

adattare il README per GitHub Pages

aggiungere una sezione Didattica / Classroom

creare un CONTRIBUTING.md

o riscriverlo in inglese
