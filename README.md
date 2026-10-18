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

## Git

Per `.gitignore` werden nur `.tex`-Dateien, `README.md` und `.gitignore` versioniert. PDFs, Build-Dateien und der VS-Code-Workspace bleiben lokal.
