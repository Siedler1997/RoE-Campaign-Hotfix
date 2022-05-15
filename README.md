# Unofficial RoE Communitypatch
Dieser inoffizielle Patch behebt diverse Bugs vom Spiel 'Die Siedler - Aufstieg eines K�nigreichs' und f�gt neue Features hinzu.



## Installation
Mit folgenden Schritten l�sst sich der Patch installieren:
1. Projekt �ber Code -> Download ZIP herunterladen
2. Ordner in das AeK-Hauptverzeichnis entpacken
3. Zocken



## Features
Folgende �nderungen wurden vorgenommen:
- Allgemein
	- Marcus wird nicht mehr als generischer Ritter gesetzt
- Ritter
	- Passive F�higkeiten
		- Allandra: Bonusgold f�r Predigten erh�ht (20% -> 40%)
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
			- Passive F�higkeit: Billigerer ausbau von Geb�uden
		- Kastellane k�nnen theoretisch als Ritter genutzt werden
- Milit�r
	- Banditen 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein eigenes Audio-Feedback
		- Fix: S�deurop�ische Banditen-Schwertk�mpfer greifen nicht mehr automatisch Geb�ude an
	- Signatureinheiten vom Roten Prinzen und Khana 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein anderes Audio-Feedback 
			- Zurzeit noch das von Banditen...
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
- Hauptmen�
	- AddOn nutzt weitgehend Hauptspiel-Hintergrund und Soundtrack
	- Hintergrund ist tageszeitabh�ngig
	- Kartenauswahl
		- Im AddOn wieder alle Ritter ausw�hlbar, inklusive die Neuen
		- Filter
			- Im Einzelspieler nach Herkunft und Missionsziel
			- Im Mehrspieler nach Herkunft und maximaler Spieleranzahl
			- Wenn dadurch keine ausgew�hlt ist wird Mapvorschau geleert und Starten-Button deaktiviert
- Diverses
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
- Kampagnen
	- Bugs gefixt
		- Verfr�hte Meldungen von KI-Mitspielern (M05: Drengir, M09: Husran)
		- Verst�rkung f�r den Spieler spawnt nicht (M15: Vestholm)
	- KI aggressiver
		- M09: Husran
	- KI-Spielerfarben
		- Mehr Varianz bei Spielerfarben
		- Konsistentere Spielerfarben im AddOn
	- Thronsaal hat einen eigenen Soundtrack



## ToDos
Folgende Features sind geplant, aber noch nicht umgesetzt:
1. Als bba gepackte Version f�r das "alte" AeK
2. GGf. weitere Modifikationen �ber den Patch hinaus (aber in einem anderen Branch bzw. Projekt)