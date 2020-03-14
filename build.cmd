@echo off

pandoc -t revealjs --template assets/template.revealjs.html -s ^
    -o index.html slides.md ^
    --slide-level=2 ^
    --katex=assets/katex/ ^
    -V revealjs-url=assets/revealjs ^
    -V lang=zh-hans ^
    -V menu=true ^
    -V theme=black ^
    -V width=1366 ^
    -V height=768