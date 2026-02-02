---
title: "Benutzung"
description: "Bedienung von noScribe und noScribeEdit sowie Hinweise zur Transkriptqualität."
weight: 20
---

# Benutzung

## Usage

### Settings

![noScribe Einstellungen](/img/noScribe_settings.png)

- **Audiodatei auswählen:** Unterstützt werden nahezu alle Audio‑ und Videoformate.
- **Ausgabedatei:** Standard ist `.html` (kompatibel mit dem Editor). Optional `.vtt` für Untertitel oder `.txt` als Klartext.
- **Start/Stop:** Zeitbereich im Format `hh:mm:ss`, ideal zum Testen einzelner Ausschnitte.
- **Sprache:** „Auto“ zur Erkennung oder „Multilingual“ für mehrere Sprachen (experimentell).
- **Qualität:** „Precise“ liefert die besten Ergebnisse, „Fast“ ist schneller und erfordert mehr Nachkorrektur.
- **Pausen markieren:** Stille wird als Punkte in Klammern markiert, optional ab 1/2/3 Sekunden.
- **Sprechererkennung:** Anzahl der Sprecher wählen oder „Auto“. „None“ beschleunigt, liefert aber keinen Sprecherwechsel.
- **Überlappende Sprache:** Markierung mit `//` (experimentell).
- **Disfluencies:** Füllwörter und Satzabbrüche nach Möglichkeit mittranskribieren.
- **Zeitstempel:** Optional alle 60 Sekunden oder bei Sprecherwechsel.

### Transcription process

- **Start** beginnt, **Cancel** bricht ab.
- Eine Stunde Audio kann mehrere Stunden Rechenzeit benötigen.
- Fortschritt erscheint in der Statuszeile, Log‑Ausgaben im Hauptfenster.
- Zwischenspeicherung erfolgt automatisch.
- Ergebnisse sollten immer im Editor geprüft werden.

### Batch transcription

![Batch Queue](/img/queue.png)

- Der Tab „Queue“ zeigt alle Jobs, Status und Fortschritt.
- Neue Jobs werden in eine Warteschlange gestellt.
- Mehrere Dateien lassen sich in einem Durchgang auswählen.

Job‑Buttons:

- `X` löscht oder bricht Jobs ab.
- `✔` öffnet das Ergebnis im Editor (auch bei Fehlern).
- `⟲` startet einen Job neu (bei Fehlern/Abbruch).

## noScribe Edit

![noScribe Editor](/img/noScribe_Editor.png)

noScribeEdit ist der Editor zur Korrektur der Transkripte.

- **Ctrl+Space** (Mac: `^Space`) startet/stoppt Audio an der Cursorposition.
- Die Auswahl folgt dem Audio; zum Editieren einfach klicken oder mit den Pfeiltasten navigieren.
- Abspieltempo anpassen (z. B. 100%).
- Sprechernamen per Suchen/Ersetzen ändern.
- Zoom‑Funktion über Plus/Minus.
- Typische Editor‑Shortcuts funktionieren (Speichern, Suchen, Rückgängig usw.).

Quellcode: https://github.com/kaixxx/noScribeEditor

## Factors Influencing the Quality of the Transcription

- Gute Aufnahmequalität (klare Stimmen, wenig Störgeräusche) ist entscheidend.
- Die Qualität variiert je nach Sprache; einige Sprachen sind deutlich besser unterstützt.
- Dialekte werden oft erkannt, benötigen aber mehr Nacharbeit.

## Known Issues

- Fehlerhafte Transkriptionen und Sprecherzuordnung sind möglich – eine Prüfung ist notwendig.
- Das Modell kann in seltenen Fällen halluzinieren (insbesondere in stillen Passagen).
- Eigennamen und Begriffe werden häufiger falsch erkannt.
- Wiederholte Textschleifen sind möglich; in diesem Fall kürzere Abschnitte transkribieren.
- Multilinguale Audios sind experimentell und können Übersetzungen enthalten.
- Nonverbale Ausdrücke (Lachen etc.) fehlen und müssen ergänzt werden.
- Bei langen Audios kann Interpunktion/Kapitalisierung verloren gehen.
