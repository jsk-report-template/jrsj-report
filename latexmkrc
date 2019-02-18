$out_dir = 'build';
$reorder = 1;
$pdf_mode = 3;
$latex = 'platex -synctex=1 -kanji=utf8 -interaction=nonstopmode -halt-on-error -shell-escape';
$bibtex = 'pbibtex %O %B -kanji=utf8';
$dvipdf = 'dvipdfmx -f ptex-ipa.map %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';

if ($^O eq 'darwin') {
    $pvc_view_file_via_temporary = 0;
    $pdf_previewer = 'open -ga /Application/Preview.app';
} elsif ($^O eq 'linux') {
    $pdf_previewer = 'xdg-open';
}
