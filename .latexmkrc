$pdf_mode = 1;
$out_dir = 'build';
@default_files = ('main.tex', 'fragenkatalog.tex');
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
