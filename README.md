# Zwätschgen-Pubquiz

LaTeX-Projekt für das Pubquiz am Zwätschgenabend der HSLU ET.

## Dateien

| Datei | Inhalt |
|---|---|
| `main.tex` | Konzept: Ziele, Teambildung, Dozierende, Ablauf, Wertung, Rollen, Vorbereitung |
| `fragenkatalog.tex` | Fragenkatalog: Multiple Choice (A–D), Schätzfragen, Finale, Antwortblatt |
| `praeambel.tex` | Gemeinsame Pakete, Farben und Makros (wird von beiden eingebunden, nicht selbst kompilieren) |

## Bauen

- VS Code mit der Extension **LaTeX Workshop**: `main.tex` oder `fragenkatalog.tex` öffnen und speichern.
- Terminal: `latexmk main.tex fragenkatalog.tex`

## Lösungen ein- und ausblenden

In `fragenkatalog.tex` oben `\loesungtrue` (Version für den Quizmaster) oder `\loesungfalse` (Fragenheft für die Teams) setzen.

## Neue Fragen

```latex
\mc{Frage}{Antwort A}{Antwort B}{Antwort C}{Antwort D}{B. Erklärung}
\schaetz{Frage}{Lösung}
```

## Gruppen-App (`app/index.html`)

Check-in am Eingang: Jede Person wählt 1., 2., 3. Jahr oder Dozent:in und bekommt sofort ein Team.

- Datei im Browser öffnen (Doppelklick), keine Installation nötig. Läuft offline.
- **Einstellungen:** erwartete Anzahl Studierende, Zielgrösse pro Team (Standard 5), 1 oder 2 Dozierenden-Teams.
- **Verteilung:** Neue Personen kommen ins Team mit den wenigsten Leuten ihres Jahrgangs, bei Gleichstand ins kleinste Team. Kommen mehr Leute als erwartet, werden früh neue Teams eröffnet.
- **Übersicht:** alle Teams mit Jahrgangs-Mix, «Letzte Eingabe rückgängig», «Alle neu verteilen» und CSV-Export.
- Die Daten bleiben im Browser gespeichert (auch nach Neuladen). Am Abend immer denselben Laptop und Browser verwenden.
- Teamnamen nach Widerstands-Farbcode: Schwarz (0) bis Weiss (9), danach Gold und Silber.

## Git

Per `.gitignore` werden nur `.tex`-Dateien, `app/*.html`, `README.md` und `.gitignore` versioniert. PDFs, Build-Dateien und der VS-Code-Workspace bleiben lokal.
