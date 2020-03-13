@echo off

pandoc -t revealjs -s ^
    -o index.html slides.md ^
    --slide-level=2 ^
    --katex=assets/katex/ ^
    -V revealjs-url=assets/revealjs ^
    -V theme=black ^
    -V transition=fade