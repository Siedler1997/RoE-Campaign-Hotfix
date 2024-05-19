# Unofficial RoE Communitypatch
Dieser inoffizielle Patch behebt diverse Bugs der History Edition vom Spiel 'Die Siedler - Aufstieg eines K�nigreichs' und f�gt neue Features hinzu.



## Installation
Mit folgenden Schritten l�sst sich der Patch installieren:
1. Lege eine Sicherheitskopie von `extra1` unter dem Namen `extra1_orig` an.
Extra1 findest du unter The `Settlers - Rise of an Empire - History Edition\Data`. Du kannst die Kopie nennen, wie du willst.
2. Projekt �ber Code -> Download ZIP herunterladen
3. Kopiere den `Data` Ordner in der Zip nach `Settlers - Rise of an Empire - History Edition` und best�tige das �berschreiben.
4. �ndere die Starteinstellungen in Steam bzw. Uplay, sodass das Programm mit `-EXTRA1` als Parameter ausgef�hrt wird.
3. Zocken


## Deinstallation
Mit folgenden Schritten l�sst sich der Patch deinstallieren:
1. L�sche `Settlers - Rise of an Empire - History Edition\Data\extra1`.
2. Benenne die Sicherheitskopie von `extra1_orig` in `extra1` um.
3. Entferne `-EXTRA1` aus den Startoptionen von Steam bzw. Uplay.
4. Vanilla zocken


## Features
Folgende �nderungen wurden vorgenommen:
- Ritter
	- Haben nun je 3 "Fackeln", um Geb�ude angreifen zu k�nnen
	- "Alte" Ritter �berarbeitet
		- Allandra
			- Passive F�higkeiten: Bonusgold f�r Predigten erh�ht (20% -> 40%)
			- Bonus: Lebenspunkte leicht erh�ht (1.000 -> 1.100)
		- Elias
			- Aktive F�higkeit: Gew�hrt zus�tzlich den "Vielf�ltige Nahrung"-Bonus
			- Passive F�higkeiten: Handelsbonus erh�ht (20% -> 40%)
		- Hakim
			- Aktive F�higkeit (Konversion)
				- Cooldown leicht erh�ht (7:30 Min. -> 8:00 Min.)
				- Kann nicht benutzt werden, wenn Soldatenlimit schon erreicht
		- Marcus
			- Bonus: Lebenspunkte leicht erh�ht (1.000 -> 1.100)
		- Thordal
			- Aktive F�higkeit: Gew�hrt zus�tzlich den "Vielf�ltige Unterhaltung"-Bonus
			- Boni: Angriffskraft erh�ht (25 -> 50) und Rekrutierung von Wikingern in Kasernen
		- Kestral
			- Bonus: Rekrutierung von Banditen in Kasernen (Art h�ngt von Klimazone ab)
		- Saraya
			- Aktive F�higkeit: Mindest-Warenmenge erh�ht (5 -> 9)
			- Passive F�higkeit: Handelsposten noch billiger (50% -> 25%)
	- "Neue" Ritter implementiert
		- Crimson Sabatt
			- Aktive F�higkeit: Konversion (wie Hakim)
			- Passive F�higkeit: Bessere Handelskonditionen (wie Elias)
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
		- Der Rote Prinz
			- Aktive F�higkeit: Tribut (wie Saraya)
			- Passive F�higkeit: H�here Steuern (wie Kestral)
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
			- F�r Mapper: 
				- Es gibt auskommentierte Codeschnippsel f�r eine "richtige" Seuchen-F�higkeit
				- Wird zurzeit nicht verwendet, da im Mehrspieler nicht nutzbar
				- Wer sie nutzen will, kann sie wom�glich reaktivieren
		- Khana
			- Aktive F�higkeit: Versorgung von Soldaten mit Fackeln (wie Marcus)
			- Passive F�higkeit: Mehr Gold von Predigten (wie Allandra)
			- Bonus: Rekrutierung von Signatureinheiten in Kasernen
		- Praphat
			- Aktive F�higkeit: Versorgung von Einwohnern mit Kleidung und gew�hrt "Vielf�ltige Kleidung"-Bonus (analog Elias/Thordal)
			- Passive F�higkeit: Billigerer Ausbau von Geb�uden (wie Hakim)
		- Kastellane 
			- K�nnen theoretisch als Ritter genutzt werden
			- Haben keine besonderen F�higkeiten
		- Alle "neuen" Ritte haben (provisorische) Ladebildschirm-Bilder
- Milit�r
	- Einheiten k�nnen mittels Entlassen-Button ... entlassen werden
	- Bogensch�tzen allgemein
		- Fernkampf-Schaden deutlich reduziert (30 -> 20)
		- Maximale Fernkampf-Reichweite leicht erh�ht (24sm -> 25sm)
		- Ausnahme: Wikinger-Axtwerfer
	- Banditen 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein eigenes Audio-Feedback
		- Haben etwas andere Statuswerte gg�. konventionellen Einheiten
			- Weniger Lebenspunkte (-5)
			- H�here Bewegungsgeschwindigkeit (480 < 500)
			- H�herer Schaden gegen Geb�ude (5 -> 10)
			- Eine Fackel mehr (1 -> 2)
		- Fixes
			- S�deurop�ische Banditen-Schwertk�mpfer greifen nicht mehr automatisch Geb�ude an
			- Asiatische Banditen haben keine Overhead-Namen mehr
	- Signatureinheiten vom Roten Prinzen und Khana 
		- K�nnen in Kasernen wieder aufgef�llt werden
		- Haben ein anderes Audio-Feedback 
			- Zurzeit noch das von Banditen...
		- Haben etwas andere Statuswerte gg�. konventionellen Einheiten
			- RP
				- Weniger Lebenspunkte (-5)
				- H�here Bewegungsgeschwindigkeit (480 < 490)
			- Khana
				- Weniger Lebenspunkte (-10)
				- H�here Bewegungsgeschwindigkeit (480 < 500)
				- H�herer Schaden gegen anderen Einheiten (20 < 22)
		- RP-Einheiten haben eine eigene Button-Textur
		- Khana-Einheiten haben keine Overhead-Namen mehr
	- "Neue" Einheiten
		- Lanzentr�ger
			- Inspiriert von den Streitlanzentr�gern in DEdK
			- Statuswerte (im Vergleich zu Schwertk�mpfern)
				- Langsamere Bewegungsgeschwindigkeit (420 < 480)
				- Weniger Lebenspunkte (90 < 120)
				- Weniger Schaden (15 < 20)
					- Ausnahme: Doppelter Schaden gegen Ritter (30)
				- Weniger Angriffscooldown (2,5sec < 3sec)
				- H�here Reichweite (2,5sm > 1,5sm)
		- Hellebardiere
			- Basieren auf den Hellebardieren in DEdK
			- Haben noch etwas bessere Stats als Streitlanzentr�ger
			- Sind Einzelg�nger
			- NICHT rekrutierbar, aber kontrollierbar
				- F�r Mapper: Gut nutzbar als NPCs bzw. Dekoration
		- Raubtiere als kontrollierbare Milit�reinheiten verf�gbar
			- Konkret: B�ren (3 Arten), L�wen (2 Arten), W�lfe (4 Arten), Tiger
		- Trebuchet
			- Funktioniert �hnlich wie ein Katapult
				- H�here Maximalreichweite (32sm > 24sm)
				- H�here Mindestreichweite (18sm > 10sm)
				- H�herer Schaden (100 > 50)
				- Geringere Feuerrate (8 Sek. > 5 Sek.)
				- Braucht l�nger zum Auf- und Abbau (8 Sek. > 5 Sek.)
			- Kann sich in aufgebauter Form nicht fortbewegen
			- Muss nicht von Soldaten bedient werden
			- Zurzeit noch nicht baubar, vllt. mit Titel "Erzherzog"?
		- Geister-Ochse in Anlehnung an Ubis Raketen Ochsen ;)
	- "Alte" Trebuchets
		- Richtiges Selektionsmen�
		- Eigener Tooltip-String
		- Mit Munition belieferbar
		- Diverse Anpassungen auf Basis des "neuen" Trebuchets
	- Rammen k�nnen keine Mauern mehr angreifen
	- (Turm-)Katapulte und Trebuchets k�nnen Milit�reinheiten aktiv angreifen
	- Overhead und SelectionMenu vom Gef�ngniskarren den anderen Karren angeglichen
	- Mauerkatapulte abgeschw�cht
		- Kosten mehr Eisen (5 -> 10)
		- Kosten mehr Gold (200 -> 300)
		- Schaden reduziert (50 -> 40)
		- Mindestreichweite erh�ht (10sm -> 12sm)
		- Sind auf maximal 12 St�ck gleichzeitig pro Spieler limitiert
	- Diebe
		- Sind auf maximal 6 St�ck gleichzeitig pro Spieler limitiert
- Geb�ude
	- Arbeiter in Kasernen holen ihre Waffen nun einzeln
	- Kirche
		- Mehr Siedler pro Predigt m�glich
		- Einwohnerlimit pro Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
	- Burg
		- Soldatenlimit pro Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
		- Spielerwappen wird nicht mehr auf dem Banner am Eingang abgebildet
			- Technisch leider zwecks Konsistenz zwischen alten und neuen Wappen notwendig
	- Lagerhaus
		- Lagerkapazit�t der 3. und 4. Ausbaustufe erh�ht
		- Eigenes Icon auf der Minimap
	- Marktplatz: Generische Ritter-Statue bei Khana, Praphat und Kastellanen
	- "Neue" Geb�ude
		- Wachturm
			- Kostet 11 Steine
			- Kann mit einem Turmkatapult ausger�stet wwerden
		- Aussichtsturm
			- Kostet 12 Steine
			- Besitzt eine hohe Sichtweite
			- Sieht einfach schick aus :)
		- AS-Zelte mit entsprechenden Workern
	- NPC-Geb�ude
		- RP-/Khana-Kasernen
			- Funktionieren unter Spieler-Kontrolle wie normale Kasernen auch
			- Erm�glichen, unabh�ngig vom Ritter, Rekrutierung von RP- bzw. Khana-Einheiten
		- Alle NPC-Geb�ude mit Men�
			- Sollten nun einen Namens-String haben
			- Zeigen die Ausbaustufe "1/1" an
		- Hauptspiel-Marktpl�tze haben ein Mouseover
	- Bienenst�cke haben weniger Lebenspunkte (10 -> 5)
	- Handelsposten-Baubutton hat einen etwas verst�ndlicheren Tooltip
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
	- Automatisches Schnellspeichern deaktiviert
		- F�r Mapper: Quicksave wurde �ber neue Funktion umgeleitet: KeyBindings_SaveGame_Neu()
	- Teardown-Sound von Palisaden/Mauern etwas leiser
	- Marcus wird nicht mehr als generischer Ritter gesetzt
	- Ungenutztes Audio-Feedback von Rittern, Soldaten und Dieben wird nun verwendet
	- Eisb�ren nutzen ihre richtige Sterbeanimation
	- Maximale bzw. Standard-Kapazit�t von Stein- und Eisenminen etwas erh�ht (250 -> 300)
	- Geologeneins�tze 
		- Kosten deutlich mehr Gold (250 -> 500)
		- Haben einen verst�ndlicheren Tooltip sowie einen eigenen Disabled-Tooltip
		- F�r Mapper: K�nnen mit den neuen Technologien 'R_RefillStoneMine', 'R_RefillIronMine' und 'R_RefillCistern' verboten werden
	- Steuern
		- Maximale Anzahl an Steuereintreibern erh�ht (6 -> 8)
	- Bei Minimap-Benachrichtigung wird der ausl�sende Spieler erst entfernt, um Verwirrung zu vermeiden
	- Neun "neue" Spielerfarben
	- Profil-Men�
		- Buttons haben nun alle einen Hover-Effekt
		- Speichern der Profileinstellungen funktioniert nun zuverl�ssig
		- Neue Wappen hinzugef�gt
			- Textur ist im Bef�rderungs-Fenster nun richtig zentriert
			- Neue, von Stronghold 2 und Legends inspirierte Wappen
		- Option f�r alternative Spielerfarbe: Gelb
			- Wirkt sich auf das gew�hlte Wappen und ALLE Maps aus
			- Hat keinen Einfluss auf den Multiplayer
	- Kampfmusik nach Klimazonen getrennt (als verschiedene Playlists)
	- Baumen�: BeautificationMenu versch�nert
	- Unterschiedliche Festival-Musik, je nachdem, ob der Anlass eine Heldenbef�rderung oder ein normales Fest ist
	- Niederlagen-Kamerarotation deutlich verlangsamt
	- Sieg und Niederlage haben jeweils eine Art "Jingle"
	- Krankheiten treten nun schon ab 101 Siedlern auf, nicht erst ab 151
	- Minimap
		- Spielerfarben auf der Minimap sind nun (meistens) korrekt
		- Alle Icons um 25% verkleinert
		- Au�enposten, Handelsposten und Khanas Tempel werden ebenfalls angezeigt
    - NPC Charaktere k�nnen nicht mehr Spieler 0 angeh�ren
- Kampagnen
	- Hauptspiel-Kampagne auch im AddOn spielbar
	- Bugs gefixt
		- Verfr�hte Meldungen von KI-Mitspielern (M05: Drengir, M09: Husran)
		- Verst�rkung f�r den Spieler spawnt jetzt (M15: Vestholm)
		- KI verliert am Anfang der Mission keine Territorien mehr (M09: Husran)
		- Unn�tze Randterritorien in benachbarte eingegliedert (M14: Gueranna)
	- KI-Spielerfarben
		- Mehr Varianz bei Spielerfarben
		- Konsistentere Spielerfarben im AddOn
	- Thronsaal 
		- Hat einen eigenen Soundtrack
		- T�r wird von Hellebardieren bewacht
	- Diverses
		- M09: Husran: KI aggressiver und mit eigener Eisenmine
		- AM05: Idukun: durch etwas mehr Startkapital etwas einfacher