file="$1"
shift
pandoc --citeproc --bibliography *.bib  --template media/template.html --css media/custom-phd-defense.css --mathjax --standalone -t revealjs -V revealjs-url:reveal.js $file.md -o $file.html $@