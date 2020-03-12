# 浅谈置换群 幻灯片

## 简介

幻灯片主要偏向于应用，因此可能会有不严谨之处…… 我会尽量完善……

源文件即 `slides.md`，可下使用 `pandoc` 编译为网页文件 `index.html`。参考编译指令如下：

```bash
pandoc -t revealjs -s -o index.html slides.md --katex=assets/katex/ -V revealjs-url=assets/revealjs -V theme=black -V hash=true -V transition=fade --slide-level=2 --highlight-style=zenburn
```

也可执行仓库根目录下的 `build.cmd` 或 `build.sh`。仓库中已经附带了编译好的网页文件 `index.html`。

## 进度

**ETA: 03/13/2019**

**Release-Candidate: ver0311**

- [x] 基础理论与证明
  - [x] 群
  - [x] 关系，等关系，等价类
  - [x] 陪集，拉格朗日定理
  - [x] 置换，置换群
  - [x] 群在集合上作用，轨道，稳定子
  - [x] Burnside 引理
  - [x] Polya 计数定理
- [x] 基本模型：项链染色
- [x] 基本模型：无向图染色
- [x] 题目：ICPC 2019 南昌 J.Summon
- [ ] ~~题目：ICPC 2019 银川 M.Crazy Cake~~