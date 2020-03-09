# 浅谈置换群 幻灯片

## Intro

目前还在制作中…… qwq

幻灯片主要偏向于应用，因此可能会有不严谨之处…… 我会尽量完善……

源文件即 `slides.md`，需要在有互联网连接的前提下使用 `pandoc` 编译为网页文件 `index.html`。编译指令如下：

```bash
pandoc -t revealjs -s -o index.html slides.md --katex -V revealjs-url=https://revealjs.com -V theme=black -V hash=true -V transition=fade --slide-level=2 --highlight-style=zenburn
```

仓库中已经附带了编译好的网页文件 `index.html`。

## To-do

**ETA: 03/13/2019**

- [x] 基础理论与证明
- [x] 基本模型：项链染色**（细节还需 polish）**
- [x] 基本模型：无向图染色**（细节还需polish）**
- [ ] 可能考虑引入一些中档题目作为过渡
- [x] 题目：ICPC 2019 南昌 J.Summon
- [ ] 题目：ICPC 2019 银川 M.Crazy Cake