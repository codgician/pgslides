#!/bin/sh

pandoc -t revealjs -s -o index.html slides.md --katex=assets/katex/ -V revealjs-url=assets/revealjs -V theme=black -V hash=true -V transition=fade --slide-level=2 --highlight-style=zenburn
