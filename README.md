# Unofficial RoE Communitypatch
Dieser inoffizielle Patch behebt diverse Bugs vom Spiel 'Die Siedler - Aufstieg eines K�nigreichs' und f�gt neue Features hinzu.



## Installation
Mit folgenden Schritten l�sst sich der Patch installieren:
1. Projekt �ber Code -> Download ZIP herunterladen
2. Ordner in das AeK-Hauptverzeichnis entpacken
3. Zocken



## Features
Folgende �nderungen wurden vorgenommen:
- Ritter
	- Passive F�higkeiten modifiziert
		- Allandra: Bonusgold f�r Predigten erh�ht (20% -> 40%)
	- Aktive F�higkeiten modifiziert
		- Hakims Konversion: Kann nicht benutzt werden, wenn Soldatenlimit erreicht
	- Neue Bonus-F�higkeiten f�r manche Ritter
		- Leicht ver�nderte Statuswerte
			- Marcus: Lebenspunkte leicht erh�ht (1.000 -> 1.100)
			- Allandra: Lebenspunkte leicht erh�ht (1.000 -> 1.100)
			- Thordal: Angriffskraft erh�ht (25 -> 40)
		- Thordal: Rekrutierung von Wikingern in Kasernen
		- Kestral: Rekrutierung von Banditen in Kasernen (Art h�ngt von Klimazone ab)
	- "Neue" Ritter
		- Crimson Sabatt
			- Aktive F�higkeit: Konversion
			- Passive F�higkeit: Bessere Handelskonditionen
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
		- Der Rote Prinz
			- Aktive F�higkeit: Tribut
			- Passive F�higkeit: H�here Steuern
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
			- F�r Mapper: 
				- Es gibt auskommentierte Codeschnippsel f�r eine "richtige" Seuchen-F�higkeit
				- Wird zurzeit nicht verwendet, da im Mehrspieler nicht nutzbar
				- Wer sie nutzen will, kann sie wom�glich reaktivieren
		- Khana
			- Aktive F�higkeit: Versorgung von Sodaten mit Fackeln
			- Passive F�higkeit: Mehr Gold von Predigten (40%)
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
		- Praphat
			- Aktive F�higkeit: Versorgung von Einwohnern mit Kleidung
			- Passive F�higkeit: Billigerer Ausbau von Geb�uden
		- Kastellane k�nnen theoretisch als Ritter genutzt werden
		- Varianz an Ladebildschirm-Bildern
- Milit�r
	- Banditen 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein eigenes Audio-Feedback
		- Fixes
			- S�deurop�ische Banditen-Schwertk�mpfer greifen nicht mehr automatisch Geb�ude an
			- Asiatische Banditen haben keine Overhead-Namen mehr
	- Signatureinheiten vom Roten Prinzen und Khana 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein anderes Audio-Feedback 
			- Zurzeit noch das von Banditen...
		- RP-Einheiten habe eine eigene Button-Textur
		- Khana-Einheiten haben keine Overhead-Namen mehr
	- "Neue" Einheiten
		- Raubtieren als kontrollierbare Milit�reinheiten verf�gbar
			- Konkret: B�ren (3 Arten), L�wen (2 Arten), W�lfe (4 Arten), Tiger
		- Trebuchet
			- Funktioniert �hnlich wie ein Katapult
				- H�here Maximalreichweite (3.600 > 2.400)
				- H�here Mindestreichweite (1.800 > 1.000)
				- H�herer Schaden (100 > 50)
				- Geringere Feuerrate (7.5 Sek > 5 Sek)
				- Braucht l�nger zum Auf- und Abbau (8.000 > 5.000)
			- Kann sich in aufgebauter Form nicht fortbewegen
			- Zurzeit noch nicht baubar
	- Rammen k�nnen keine Mauern mehr angreifen
	- (Turm-)Katapulte und Trebuchets k�nnen Milit�reinheiten aktiv angreifen
	- Mauerkatapulte abgeschw�cht
		- Kosten mehr Eisen (5 -> 10)
		- Kosten mehr Gold (200 -> 300)
		- Schaden reduziert (50 -> 40)
		- Mindestreichweite erh�ht (1.000 -> 1.200)
- Geb�ude
	- Kirche
		- Mehr Siedler pro Predigt m�glich
		- Einwohnerlimit pro Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
	- Burg
		- Soldatenlimit pro Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
	- Lagerhaus
		- Lagerkapazit�t der 3. und 4. Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
	- "Neue" Geb�ude
		- Wachturm
			- Kostet 11 Steine
			- Kann mit einem Turmkatapult ausger�stet wwerden
		- Aussichtsturm
			- Kostet 12 Steine
			- Besitzt eine hohe Sichtweite
			- Sieht einfach schick aus :)
	- Ziergeb�ude der Special Edition im Hauptspiel verf�gbar
- Hauptmen�
	- AddOn nutzt weitgehend Hauptspiel-Hintergrund und Soundtrack
	- Hintergrund ist tageszeitabh�ngig
	- Kartenauswahl
		- Im AddOn wieder alle Ritter ausw�hlbar, inklusive die Neuen
		- Ritter-Restriktionen erlauben jetzt die korrekte Sperrung einzelner Ritter
		- Filter
			- Im Einzelspieler nach Herkunft und Missionsziel
			- Im Mehrspieler nach Herkunft und maximaler Spieleranzahl
			- Wenn dadurch keine ausgew�hlt ist wird Mapvorschau geleert und Starten-Button deaktiviert
		- Im AddOn auch alle Hauptspiel-Karten ausw�hlbar
- Diverses
	- Marcus wird nicht mehr als generischer Ritter gesetzt
	- Ungenutztes Audio-Feedback von Rittern, Soldaten und Dieben wird nun verwendet
	- Eisb�ren nutzen nun ihre richtige Sterbeanimation
	- Maximale bzw. Standard-Kapazit�t von Stein- und Eisenminen etwas erh�ht (250 -> 300)
	- Geologeneins�tze kosten deutlich mehr (250 -> 500)
	- Steuern
		- Maximale Anzahl an Steuereintreibern erh�ht (6 -> 8)
	- Bei Minimap-Benachrichtigung wird der ausl�sende Spieler erst entfernt, um Verwirrung zu vermeiden
	- Neuen "neue" Spielerfarben
	- Wappen
		- Textur ist im Bef�rderungs-Fenster nun richtig zentriert
		- Neue, von Stronghold 2 und Stronghold Legends inspirierte Wappen
	- Alternative Spielerfarbe: Gelb
		- Ist in den Optionen (de-)aktivierbar
		- Wirkt sich auch auf das gew�hlte Wappen aus
		- Hat keinen Einfluss auf den Multiplayer
	- Profil-Men�
		- Buttons haben nun alle einen Hover-Effekt
		- Speichern der Profileinstellungen funktioniert nun zuverl�ssig
	- Kampfmusik nun nach Klimazonen getrennt (als verschiedene Playlists)
	- Unterschiedliche Festival-Musik je nachdem, ob der Anlass eine Heldenbef�rderung oder normales Fest ist
	- Niederlagen-Kamerarotation deutlich verlangsamt
	- Sieg und Niederlage spielt haben jeweils eine Art "Jingle"
	- Spielerfarben auf der Minimap sind nun (meistens) korrekt
- Kampagnen
	- Bugs gefixt
		- Verfr�hte Meldungen von KI-Mitspielern (M05: Drengir, M09: Husran)
		- Verst�rkung f�r den Spieler spawnt nicht (M15: Vestholm)
	- KI-Spielerfarben
		- Mehr Varianz bei Spielerfarben
		- Konsistentere Spielerfarben im AddOn
	- Thronsaal hat einen eigenen Soundtrack
	- Diverses
		- M09: Husran: KI aggressiver
		- AM05: Idukun: durch etwas mehr Startkapital etwas einfacher



## (M�gliche) ToDos
- Reiche Stadtgeb�ude rebalancen
- Au�enposten/Aussichtsturm/Wachturm
	- ME-Aussichtsturm: Schwarze Seite
	- Aussichtst�rme: Alarm?
	- Eigene Button-Texturen f�r Aussichtsturm und Wachturm
		- Wachturm: QuestInformation.Tower (mit Katapult), ...?
		- Aussichtsturm: PB_Tower1, Alarm, ...?
	- Generischer Au�enposten, inkl. Katapult und Soldatenbemannung
- Spielerfarben
	- Minimap-Territorium-Farben weichen nach Neustart z.T. ab 
		- z.B. Dorf-Dunkelgr�n -> Stadt-Gr�n
		- Beispiel: Der kalte Strom (Dorf)
		- Ist ein Vanilla-Bug!
	- KIs bekommen im MP die Spielerfarben ab Gelb (ValidPlayerColors property der Map vllt.?)
- Neue Wappen 
	- auf Ingame-Flaggen (statt Platzhalter) abbilden
- Hidun-Turnier: Neue Zelte und andere Siedler
	- Texturen f�r DEdK-Zelte gibt es schon
- Default custom maps
	- MP-Maps als Freibau-SP-Maps neu hinzuf�gen
		- Ggf. nicht alle Maps, nur die "sch�nsten"
		- Missionsziel �ndern
		- Konkurrenten entfernen
		- Diplomatie setzen
	- Hauptspiel-Kampagne im AddOn
- Musik
	- Playlists fixen (wenn n�tig)
	- Soundtrack aus DEdK (ggf. per externem Tool...)
- Wikinger: Kontrollierter Ehefrauen-Raub
- RPG-Sicht zum rumlaufen
- Nutzbare (Tier-)Seuche, inkl. Musik
	- Ruhige, aber bedrohliche Playlist
	- Erst ab x% Betroffene, da sonst zu oft getriggert
- TTS
	- Ggf. Platzhalter
	- Notizen
		- Um +8db verst�rken
		- ggf. Anfang und Ende k�rzen
		- ggf. Geschwindigkeit -25%
		- Zu mp3 konvertieren
	- Stimmen
		- RedPrince-Units: Klaus Bauer
	- Ko-fi f�r GameTTS (als Schanked�n)
- MP-Regeln
	- Geologe deaktivieren oder teurer
- Nachrichten-Stau
- MP-Koop-Fixes
- AddOn-Kampagne-Loadscreens: Richtige Spielerfarben (per Bildbearbeitung)
- Baubares Trebuchet
	- Eigenes Karren-Modell
	- Eigene Icon-Texturen
	- Es dreht sich nicht richtig
	- Begleitende Sodaten bewegen sich nach einem Move nicht mehr korrekt
- Zahme Tiere: MilitaryFeedback global statt lokal
- Sturm
	- soll mal funktionieren
	- Abwandlung: Schneesturm
	- Eigene Playlist
- Verbesserte/Glaubw�rdigere KI (in der Kampagne)
	- Allgemein: Konsequentere Nutzung von RP-/Khana-Einheiten sowie ggf. S�ldner
	- Narfang: Sabatta aggressiv, wenn ein Au�enposten erobert/zerst�rt wird
	- M15: Sturm
	- Idukun: Blizzard
	- Speziell in den "Last-Stand"-Missionen
	- Aktive KI-Ritter mit F�higkeiten
	- Nutzlose Rand-Territorien weg
- Entlassen-Button
- S�ldner-Trupps
	- Konvertierbar
	- Korrekte Fackelanzeige (auch im Base game)
- Max. Zoom leicht erh�hen
	- Winkel muss nach 0.5 anders kalkuliert werden
- "Neue" Ritter 
	- Khana und Praphat
		- Spr�che als Strings weiter anpassen
		- Audio-Feedback (TTS)
	- Kastellane: 
		- Spr�che als Strings
		- Audio-Feedback (TTS)
	- Bei Basegame-Rittern AddOn-Comments erg�nzen (TTS)
	- RP: Seuchen-F�higkeit umsetzen, falls GUI.SendScriptCommand irgendwann wieder laufen sollte
- Audio-Feedback f�r Ochsen
- Rebalancing
	- Neue (sinnvollere) Aufstiegsbedingungen
		- ggf. mit Indikator, um nur f�r neue Maps und angepasste zu gelten
		- wegen zu hohem Aufwand (Kompatibili�t mit alten Maps) erstmal Low Priority
	- Maximale Anzahl Steuereintreiber erh�hen (ggf. nur, wenn neue Einheiten verf�gbar)
	- Soldatenlimit anheben (ggf. nur, wenn neue Einheiten verf�gbar)
	- Zwischenproduktionen einf�hren
		- Low Priority, da extrem viel Arbeit...
- Spielbare D�rfer?
- Ungenutzte Geb�ude
	- Juwelier
	- Supermarkt?
- Fremder Content
	- Speerk�mpfer (Defensiv und offensiv schw�cher, aber leicht erh�hte Reichweite und billiger)
	- Kanonen (twA)
	- Reiter
- Auf 4k-Aufl�sung kann nicht mehr per BorderScroll nach rechts gecrolled werden
- Biom-spezifisches Retexturing f�r Kerngeb�ude
	- Das oder neue Modelle
- RedMe auf Englisch
- Als bba gepackte Version f�r das Original