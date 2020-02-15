#!/bin/sh

pandoc -t revealjs -s -o index.html slides.md --katex -V revealjs-url=https://revealjs.com -V theme=black -V hash=true -V transition=fade --slide-level=2 --highlight-style=zenburn
