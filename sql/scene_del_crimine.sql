--
-- File generated with SQLiteStudio v3.4.17 on sab ott 11 11:51:24 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: scene_del_crimine
CREATE TABLE IF NOT EXISTS scene_del_crimine (
      id INTEGER PRIMARY KEY,
      data INTEGER,
      tipo TEXT,
      luogo TEXT,
      descrizione TEXT
    );
    
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (1, 20120909, 'furto', 'Via Cittadina', 'Un ospite è stato trovato morto nella sua stanza d''albergo. C''erano segni di colluttazione e sangue vicino al letto.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (2, 19920415, 'furto', 'Banca del Centro', 'Una valigetta è stata rubata durante una rapina. Un uomo in abito è stato visto lasciare i locali con essa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (3, 20010702, 'omicidio', 'Angolo del Caffè', 'Un corpo è stato trovato dietro il caffè. Nessun testimone ha riferito nulla, ma c''era una ferita da coltello nella schiena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (4, 19980328, 'corruzione', 'Stazione della Metro', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (5, 20091113, 'furto', 'Ufficio di Park Avenue', 'Una valigetta con documenti classificati è stata rubata. Un testimone ha menzionato una persona in blazer che fuggiva dalla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (6, 20050716, 'omicidio', 'Grand Hotel', 'Un ospite è stato trovato morto nella sua stanza con segni di omicidio. La porta era chiusa dall''interno e non c''erano segni di effrazione.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (7, 19960205, 'furto', 'Biblioteca Cittadina', 'Una valigetta contenente documenti riservati è scomparsa. Il ladro è stato ripreso dalla telecamera di sicurezza, indossando una giacca.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (8, 20080422, 'corruzione', 'Centro Commerciale Main Street', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (9, 20110630, 'furto', 'Piazza della Città Vecchia', 'Un uomo è stato visto fuggire con una valigetta. Aveva una cicatrice sulla mano destra e indossava un cappotto.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (10, 20031218, 'omicidio', 'Parco Centrale', 'Il corpo di una donna è stato scoperto nel parco con segni di strangolamento. Un testimone ha visto un uomo con un berretto da baseball vicino alla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (11, 20120909, 'furto', 'Museo Cittadino', 'Una valigetta contenente reperti di valore è stata rubata. Un uomo con un trench è stato visto lasciare la scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (12, 20140512, 'furto', 'Terminal Aeroportuale', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (13, 19950521, 'omicidio', 'Museo d''Arte Moderna', 'Un artista di spicco è stato trovato morto nel suo studio con molteplici ferite da arma da taglio. Nessun sospettato è stato ancora identificato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (14, 20060907, 'furto', 'Hotel di Lusso', 'Una valigetta è stata rubata a un ospite. Il ladro indossava un abito scuro e aveva una cicatrice sulla guancia destra.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (15, 19980211, 'furto', 'Stazione della Metropolitana', 'Una valigetta è scomparsa dal binario. Un uomo con una giacca di pelle è stato visto con essa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (16, 20021225, 'corruzione', 'Ristorante del Centro', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (17, 20160114, 'omicidio', 'Biblioteca Universitaria', 'Uno studente è stato trovato morto vicino all''ingresso della biblioteca. La causa della morte è stata una ferita da arma da fuoco alla testa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (18, 19910730, 'furto', 'Galleria d''Arte', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (19, 20050710, 'omicidio', 'Hotel sulla Spiaggia', 'Un ospite è stato trovato morto nella sua stanza d''albergo. C''erano segni di colluttazione e sangue vicino al letto.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (20, 19990416, 'furto', 'Piazza Cittadina', 'Una valigetta è scomparsa dopo un evento. Nessun sospettato chiaro è stato identificato, ma un uomo in cappotto grigio è stato visto vicino alla zona.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (21, 20080312, 'furto', 'Centro Commerciale di Lusso', 'Una valigetta con oggetti di valore è stata rubata. Il ladro è stato descritto come indossante una giacca scura e con una cicatrice visibile.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (22, 20100122, 'corruzione', 'Area di Sosta Autostradale', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (23, 20151203, 'omicidio', 'Caffetteria', 'Un barista è stato trovato morto dietro il bancone con una ferita da arma da fuoco. Il sospettato è stato visto allontanarsi a bordo di un''auto rossa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (24, 20180418, 'corruzione', 'Municipio', 'Un funzionario comunale corrotto è stato colto nell''accettare una tangente. Un video ha mostrato la transazione in un ufficio privato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (25, 20120719, 'furto', 'Distretto dei Magazzini', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (26, 19980903, 'omicidio', 'Condominio di Lusso', 'Un corpo è stato scoperto in un appartamento in un grattacielo. La vittima aveva molteplici ferite da arma da fuoco.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (27, 20060522, 'furto', 'Centro Commerciale', 'Una borsetta è stata rubata dalla borsa di una donna nell''area ristorazione. Un uomo con una felpa rossa con cappuccio è stato visto vicino alla zona.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (28, 19941030, 'corruzione', 'Ufficio Aziendale', 'Un CEO è stato visto accettare pagamenti illegali da un appaltatore. Il contratto è stato successivamente annullato in circostanze sospette.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (29, 20150914, 'furto', 'Stazione Ferroviaria', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (30, 20070426, 'corruzione', 'Golf Club', 'Uno scandalo di corruzione che coinvolge diversi funzionari di alto livello del country club. È emerso un video che mostra lo scambio di denaro.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (31, 20010212, 'omicidio', 'Vicolo Buio', 'Un uomo è stato trovato morto in un vicolo buio con un coltello conficcato nel petto. Ancora nessun sospettato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (32, 20180125, 'furto', 'Caveau Bancario', 'Un caveau bancario è stato svaligiato durante la notte. Le telecamere di sicurezza sono state manomesse e il colpevole rimane non identificato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (33, 19961118, 'omicidio', 'Yacht di Lusso', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (34, 20030705, 'corruzione', 'Stazione della Metropolitana', 'Una tangente è stata offerta a un agente dei trasporti in cambio dell''elusione del biglietto. L''agente ha immediatamente denunciato l''incidente.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (35, 19921221, 'furto', 'Boutique di Moda', 'Una collana del valore di migliaia di euro è stata rubata durante una sfilata di moda. Una donna è stata vista allontanarsi con essa nella sua borsa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (36, 20081008, 'omicidio', 'Parco Cittadino', 'Un corpo è stato scoperto nel parco. La vittima è stata investita da un''auto e la polizia sta indagando se sia stato intenzionale.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (37, 20150203, 'furto', 'Ufficio Aziendale', 'Un laptop contenente segreti aziendali è stato rubato da un ufficio protetto. Nessun segno di effrazione.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (38, 19950627, 'furto', 'Centro Commerciale di Lusso', 'Una borsa firmata è stata rubata da un espositore. Un sospettato in abito è stato visto nelle riprese di sorveglianza.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (39, 20030410, 'corruzione', 'Cantiere Edile', 'Un appaltatore è stato corrotto per ignorare le violazioni di sicurezza. La transazione è stata ripresa dalla telecamera.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (40, 20091206, 'furto', 'Garage Multipiano', 'Un''auto è stata rubata da un garage. Il filmato di sicurezza mostra una persona con una felpa con cappuccio che si introduce nel veicolo.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (41, 20150722, 'omicidio', 'Angolo della Strada', 'Un giovane è stato trovato morto vicino a una strada trafficata. La polizia sta indagando sulla causa della morte, forse correlata alla droga.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (42, 19980305, 'furto', 'Centro Commerciale', 'Una valigetta contenente contanti è stata rubata da un espositore. Un sospettato con una giacca rossa è stato visto vicino alla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (43, 20060119, 'corruzione', 'Sala d''Attesa dell''Aeroporto', 'Un assistente di volo è stato colto nell''accettare una tangente per far saltare i controlli di sicurezza ai passeggeri.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (44, 20171003, 'furto', 'Concessionaria Auto', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (45, 20080409, 'omicidio', 'Night Club', 'Un uomo è stato trovato morto nel bagno del club. La polizia sta indagando se sia stato un affare di droga andato male.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (46, 20140822, 'corruzione', 'Ufficio Pubblico', 'Un funzionario comunale è stato colto nell''accettare tangenti da appaltatori in cambio di contratti governativi.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (47, 20031014, 'omicidio', 'Vicolo Posteriore', 'Una donna è stata trovata morta con il collo rotto. Nessun testimone era presente e nessun sospettato è stato identificato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (48, 20151209, 'furto', 'Ristorante', 'La borsetta di una donna è stata rubata mentre cenava. Un uomo con una giacca nera è stato visto vicino al tavolo.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (49, 19990217, 'corruzione', 'Edificio Governativo', 'Un politico è stato colto nel ricevere tangenti da un lobbista. L''accordo è stato origliato da una guardia di sicurezza.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (50, 20100115, 'furto', 'Gioielleria', 'Un anello di diamanti è stato rubato da una gioielleria di lusso. Il ladro indossava un cappotto nero e guanti.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (51, 20090222, 'corruzione', 'Aula di Tribunale', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (52, 20061214, 'omicidio', 'Hotel di Lusso', 'Un uomo d''affari è stato trovato morto nella sua stanza d''albergo. La polizia sospetta un omicidio, ma nessun sospettato è stato ancora nominato.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (53, 19980718, 'furto', 'Galleria d''Arte', 'Un quadro di valore è stato rubato durante una mostra. Una donna in abito rosso è stata vista lasciare la galleria.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (54, 20080304, 'corruzione', 'Cantiere Edile', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (55, 19971005, 'omicidio', 'Ospedale Cittadino', 'Un''infermiera è stata trovata morta in un ripostiglio dell''ospedale. La polizia sta indagando sul personale ospedaliero per un possibile coinvolgimento.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (56, 20011117, 'corruzione', 'Distretto Finanziario', 'Un agente di borsa è stato colto nell''offrire tangenti ai clienti per gonfiare i loro investimenti.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (57, 20070315, 'furto', 'Ufficio Aziendale', 'Un laptop aziendale con informazioni sensibili è stato rubato. Un uomo in abito è stato visto lasciare l''ufficio con esso.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (58, 20130321, 'omicidio', 'Via Cittadina', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (59, 20141011, 'furto', 'Terminal Aeroportuale', 'La valigia di un passeggero è stata scambiata con un''altra al terminal. Il sospettato indossava una maglietta rossa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (60, 20100518, 'corruzione', 'Ufficio Pubblico', 'Un funzionario è stato colto nell''accettare tangenti per approvare un progetto di costruzione senza un''adeguata ispezione.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (61, 19941122, 'omicidio', 'Bar Cittadino', 'Un uomo è stato trovato morto dopo un alterco in un bar locale. Il sospettato è fuggito dalla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (62, 20050329, 'furto', 'Centro Commerciale di Lusso', 'La borsa di una donna è stata rubata da un negozio di alta moda. Un uomo con una giacca grigia è stato visto allontanarsi con essa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (63, 20170704, 'omicidio', 'Ristorante', 'Un cuoco è stato trovato morto in cucina. Nessuna ferita evidente, ma si sospetta un omicidio.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (64, 20020301, 'corruzione', 'Cantiere Edile', 'Un appaltatore è stato corrotto per ignorare le violazioni di sicurezza in un nuovo progetto di costruzione.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (65, 20061103, 'furto', 'Biblioteca Pubblica', 'Una tessera della biblioteca con informazioni personali è stata rubata dalla scrivania del bibliotecario. Un sospettato è stato visto allontanarsi con essa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (66, 20121118, 'furto', 'Casinò', 'Un uomo è stato visto prendere fiches da un tavolo non sorvegliato. Il sospettato indossava una felpa con cappuccio nera.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (67, 19990514, 'omicidio', 'Parco Cittadino', 'Un corpo è stato scoperto vicino alla panchina del parco. La causa della morte è stata una ferita da arma da fuoco.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (68, 20190906, 'corruzione', 'Università', 'Un professore è stato colto nell''accettare tangenti dagli studenti in cambio di voti migliori.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (69, 20071220, 'furto', 'Stazione Ferroviaria', 'Un uomo ha rubato una valigia a un passeggero alla stazione ferroviaria. Il sospettato indossava una giacca e un cappello.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (70, 19990410, 'omicidio', 'Angolo della Strada', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (71, 20080111, 'furto', 'Ristorante', 'Una borsetta è stata rubata mentre la vittima stava cenando. Il sospettato è stato visto allontanarsi rapidamente.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (72, 20180228, 'corruzione', 'Ufficio Comunale', 'Un funzionario comunale è stato visto accettare contanti da un appaltatore locale per accelerare i suoi progetti.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (73, 20030504, 'furto', 'Biblioteca', 'Un libro raro è stato rubato dalla biblioteca. Il sospettato è stato visto entrare e uscire dall''area riservata.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (74, 20160622, 'omicidio', 'Vicolo del Centro', 'Una donna è stata trovata morta in un vicolo con segni di trauma contusivo alla testa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (75, 19930310, 'furto', 'Parcheggio', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (76, 19851120, 'furto', 'Blue Note Lounge', 'Una valigetta contenente documenti sensibili è scomparsa. Un testimone ha riferito di un uomo con un trench e una cicatrice sulla guancia sinistra che fuggiva dalla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (77, 20151019, 'omicidio', 'Edificio Uffici', 'Un manager è stato trovato morto nel suo ufficio. La polizia sospetta che una disputa sul posto di lavoro possa aver portato all''omicidio.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (78, 20110225, 'furto', 'Asta d''Arte', 'Un quadro è stato rubato durante un''asta. Il ladro è stato visto fuggire dalla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (79, 19980507, 'corruzione', 'Centro Medico', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (80, 20091229, 'furto', 'Sicurezza Aeroportuale', 'Una borsa contenente oggetti di valore è stata rubata durante i controlli di sicurezza.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (81, 19941021, 'omicidio', 'Bar sul Tetto', 'Un uomo è stato trovato morto dopo una discussione con un altro avventore. Nessuna arma è stata trovata sulla scena.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (82, 20081116, 'furto', 'Ufficio Aziendale', 'Un laptop con informazioni riservate è stato rubato. Nessun segno di effrazione, ma è stato visto un sospettato in abito.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (83, 20030613, 'corruzione', 'Ospedale', 'Un medico è stato colto nell''accettare denaro per fornire false relazioni mediche per richieste di risarcimento assicurativo.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (84, 20150607, 'omicidio', 'Bosco', 'Un corpo è stato scoperto nel bosco con una ferita da proiettile al petto. La polizia sta ancora cercando sospettati.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (85, 20081005, 'furto', 'Centro Commerciale', 'Un portafoglio è stato rubato a un acquirente. Il ladro è stato ripreso dalla telecamera mentre indossava un berretto da baseball.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (86, 20131011, 'corruzione', 'Consiglio Comunale', 'Un consigliere è stato colto nell''accettare tangenti per approvare le leggi di zonizzazione.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (87, 20180503, 'furto', 'Negozio di Lusso', 'Un uomo è stato visto prendere un braccialetto senza pagarlo.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (88, 19921214, 'omicidio', 'Stazione Ferroviaria', 'Un corpo è stato trovato vicino ai binari. Gli investigatori ritengono che possa essere stato un incidente o un omicidio.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (89, 20070911, 'corruzione', 'Ufficio Aziendale', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (90, 20140206, 'furto', 'Conferenza Tecnica', 'Un laptop è stato rubato durante la conferenza. Un uomo con una felpa con cappuccio nera è stato visto lasciare l''area.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (91, 20100817, 'furto', 'Libreria', 'Un libro in edizione rara è stato rubato da un espositore della libreria.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (92, 19970103, 'corruzione', 'Stazione di Polizia', 'Un agente di polizia è stato colto nell''accettare tangenti da criminali locali per ignorare le loro attività.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (93, 20091129, 'omicidio', 'Casa', 'Un corpo è stato trovato in una casa con segni di strangolamento.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (94, 19960521, 'furto', 'Galleria', 'Un quadro è stato rubato durante una mostra.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (95, 20131028, 'corruzione', 'Ufficio Postale', 'Un impiegato postale è stato colto nell''accettare denaro per manomettere la posta.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (96, 20080303, 'omicidio', 'Sponda del Lago', NULL);
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (97, 20030512, 'furto', 'Stazione di Servizio', 'Un cassiere è stato rapinato a mano armata. Il ladro ha preso il contante dal registratore di cassa.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (98, 20150717, 'corruzione', 'Scuola', 'Un insegnante è stato colto nell''accettare tangenti dai genitori per dare voti migliori ai loro figli.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (99, 20090611, 'furto', 'Cantiere Edile', 'Un camion pieno di attrezzature è stato rubato da un cantiere.');
INSERT INTO scene_del_crimine (id, data, tipo, luogo, descrizione) VALUES (100, 20180320, 'omicidio', 'Club', 'Un uomo è stato ucciso durante una rissa allinterno di un club. Il sospettato è stato visto lasciare la scena.');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;a
