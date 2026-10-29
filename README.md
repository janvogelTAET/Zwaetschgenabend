# Zwätschgen-Pubquiz

LaTeX-Projekt für das Pubquiz am Zwätschgenabend der HSLU ET.

## Dateien

| Datei | Inhalt |
|---|---|
| `main.tex` | Konzept: Ziele, Teambildung, Dozierende, Ablauf, Wertung, Rollen, Vorbereitung |
| `Fragenkatalog/fragenkatalog.tex` | Fragenkatalog: Multiple Choice (A–D), Schätzfragen, Finale, Antwortblatt |
| `praeambel.tex` | Gemeinsame Pakete, Farben und Makros (wird von beiden eingebunden, nicht selbst kompilieren) |

## Bauen

- VS Code mit der Extension **LaTeX Workshop**: `main.tex` oder `Fragenkatalog/fragenkatalog.tex` öffnen und speichern.
- Terminal: `latexmk` (baut beide Dokumente gemäss `.latexmkrc`)
- Einzelnes Dokument: `latexmk main.tex` oder `latexmk Fragenkatalog/fragenkatalog.tex`

## VS Code: Bauen und PDF per Tastatur

Die Projektdateien `.vscode/settings.json` und `.vscode/keybindings.json`
aktivieren automatisches Bauen beim Speichern und legen die Shortcuts für
LaTeX Workshop fest. Dafür muss die Extension **LaTeX Workshop** installiert
sein. Falls du die Extension gerade erst installiert hast, führe einmal
**Developer: Reload Window** über `Ctrl+Shift+P` aus.

Öffne zuerst das gewünschte Hauptdokument:

- `main.tex` für das Konzept
- `Fragenkatalog/fragenkatalog.tex` für den Fragenkatalog

Danach sind diese Shortcuts verfügbar:

| Shortcut | Aktion |
|---|---|
| `Ctrl+Alt+B` | aktuelles LaTeX-Dokument bauen |
| `Ctrl+Alt+V` | zugehörige PDF öffnen bzw. PDF-Ansicht fokussieren |
| `Ctrl+S` | speichern und automatisch neu bauen |
| `Ctrl+Alt+C` | Hilfsdateien und PDF-Ausgaben bereinigen |

Der typische Ablauf ist also:

1. `Ctrl+S` drücken (oder `Ctrl+Alt+B` für einen manuellen Build).
2. `Ctrl+Alt+V` drücken, um die aktualisierte PDF zu sehen.

Die PDFs liegen danach eindeutig unter `build/main.pdf` bzw.
`build/fragenkatalog.pdf`. Der Ausgabeordner wird zentral durch `.latexmkrc`
gesteuert. Falls ein Shortcut nicht funktioniert, mit
`Ctrl+Shift+P` den Befehl **LaTeX Workshop: Build LaTeX project** bzw.
**LaTeX Workshop: View LaTeX PDF file** suchen. Die Belegung lässt sich in
**Datei > Einstellungen > Tastaturkürzel** ändern.

## Rechtschreibprüfung

Die blauen Markierungen mit **possible spelling error** kommen von der
VS-Code-Erweiterung **Code Spell Checker**, nicht von LaTeX. Die
Projektkonfiguration verwendet dafür Deutsch (`de,de-DE`). Nach einer Änderung
an `.vscode/settings.json` einmal **Developer: Reload Window** über
`Ctrl+Shift+P` ausführen. Einzelne unbekannte Fachbegriffe können über das
Kontextmenü zu einem Projektwörterbuch hinzugefügt werden.

## Lösungen ein- und ausblenden

In `Fragenkatalog/fragenkatalog.tex` oben `\loesungtrue` (Version für den Quizmaster) oder `\loesungfalse` (Fragenheft für die Teams) setzen.

## Neue Fragen

```latex
\mc{Frage}{Antwort A}{Antwort B}{Antwort C}{Antwort D}{B. Erklärung}
\schaetz{Frage}{Lösung}
```

## Git

Per `.gitignore` werden nur `.tex`-Dateien, `README.md` und `.gitignore` versioniert. PDFs, Build-Dateien und der VS-Code-Workspace bleiben lokal.
