# Zwätschgen-Pubquiz

LaTeX-Projekt mit Konzept und Fragenkatalog für den Zwätschgenabend der HSLU ET.

## Bauen

- VS Code mit der Extension **LaTeX Workshop** öffnen, `main.tex` speichern, dann baut sie automatisch.
- Oder im Terminal: `latexmk main.tex`. Das PDF landet in `build/`.

## Lösungen ein- und ausblenden

In `main.tex` oben `\loesungtrue` (mit Lösungen) oder `\loesungfalse` (Fragenheft für die Teams) setzen.

## Hinweis

`.vscode/` und `*.code-workspace` sind in `.gitignore`, damit der Workspace nicht ins Repo kommt.
