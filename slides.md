---
author: [尚未完成]
title: 浅谈置换群
date: 2020.03
---

# 群 $(G, \cdot)$

$G$ 是非空集合，且二元运算满足：

- 结合律：$(a \cdot b) \cdot c = a \cdot (b \cdot c)$
- 单位元 $e$：$\forall a \in G, \ ea = ae = a$ 
- 逆元：$\forall a \in G, \ \exist b \in G \text{ \ s.t. \ } ab = ba = e$
  
::: fragment

若满足交换律，则为**交换群** 

:::

::: notes

对于群中的运算，我们后面会较多地称其为乘法。

思考：不满足交换律时，若成群，左逆元一定等于右逆元吗？

-- 先别看下面 qwq --

设 x 是 a 的左逆元，y 是 a 的右逆元，有：

x = xe = x(ay) = (xa)y = y

:::

## 子群

设 $(G, \cdot)$ 为群，$A$ 是 $G$ 的子集，若 $(A, \cdot)$ 成群，则称 $A$ 为 $G$ 的子群，记作 $A \le G$；

# 置换

一个集合的置换即从该集合映射至自身的**双射**。

$$
\sigma = 
\left(\begin{array}{c}
1 & 2 & \dots & n \\
\sigma(1) & \sigma(2) & \dots & \sigma(n)
\end{array}\right)
$$

复合运算: $(f \circ g)(x) = f(g(x))$

## 例

$$
\left(\begin{array}{c} 
1 & 2 & 3 & 4 & 5 & 6 \\ 
4 & 5 & 1 & 3 & 6 & 2 
\end{array}\right)
$$

::: fragment

$$
\begin{aligned}
1 & \rightarrow 4 \rightarrow 3 \\
2 & \rightarrow 5 \rightarrow 6
\end{aligned}
$$

任一置换都能被划分成若干不交的映射链？

:::


::: notes

如果可以的话，这就意味着我们发现了一种能够更简单表示置换的方式（也就是后面要介绍的轮换表示法）。

:::

## 轮换表示法

$$ 
\left(\begin{array}{c}
a_1 & a_2 & \dots & a_n \\
a_2 & a_3 & \dots & a_1
\end{array}\right) \xRightarrow{\text{记作}} (a_1 \enspace a_2 \enspace \dots \enspace a_n)
$$

## 例

$$
\left(\begin{array}{c} 
1 & 2 & 3 & 4 & 5 & 6 \\ 
4 & 5 & 1 & 3 & 6 & 2 
\end{array}\right)
= (1 \enspace 4 \enspace 3) \cdot (2 \enspace 5 \enspace 6)
$$

::: fragment

**若不计轮换内外的次序，对于任意置换的不交轮换分解是唯一的吗？**

:::

::: notes

显然不交的轮换在复合时是满足交换律的，但是如果两个轮换相交就不好说了，例如试试计算 (1 2 3) * (3 4) 是否等于 (3 4) * (1 2 3)。

:::

---

### 证明

考虑一个 $n$ 元置换

- 对于恒等置换，显然分解是唯一的；
- 对于非恒等置换，$\exist i \text{ \ s.t. \ } \sigma(i) \neq i$。
  
---

- $i \rightarrow \sigma(i) \rightarrow \sigma^2(i) \rightarrow \dots$
- 由抽屉原理，$\exist t_1 < t_2 \text{ \ s.t. \ } \sigma^{t_1}(i) = \sigma^{t_2}(i)$
- 令 $t$ 为使得 $\sigma^t(i) = i$ 的最小正整数，则：
  $$
  (i \enspace \sigma(i) \enspace \dots \enspace \sigma^{t - 1}(i))
  $$
  是一个轮换。

--- 

- 对于每个这样的 $i$ 都如此操作即可构造出一个唯一的不相交轮换分解式：
  - 每个元素在分解式中恰好出现 $1$ 次；
  - 每个元素所属于的轮换是固定的。

## 轮换的幂运算

$$
(1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)
$$

---

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^2 \\
& = (1 \enspace 3 \enspace 5) \cdot (2 \enspace 4 \enspace 6)
\end{aligned}
$$

---

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^3 \\
& =  (1 \enspace 4) \cdot (2 \enspace 5) \cdot (3 \enspace 6)
\end{aligned}
$$

---

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^4 \\
& = (1 \enspace 5 \enspace 3) \cdot (2 \enspace 6 \enspace 4)
\end{aligned}
$$

---

$$
\sigma = (a_0 \enspace a_1 \enspace \dots \enspace a_{n - 1})
$$

- $\sigma^t(a_i) = a_{[(i + t) \bmod n]}$
- 令 $k \in N^{*} \text{ \ s.t. \ } \sigma^{tk}(a_i) = a_i$：
  
::: { .fragment .current-visible style="height:0" }
$$
i + tk \equiv i \pmod n
$$
:::

::: { .fragment }
$$
tk \equiv 0 \pmod n
$$

最小非负解：$k = \frac{n}{\gcd(n, t)}$
:::

---

$$
\sigma = (a_0 \enspace a_1 \enspace \dots \enspace a_{n - 1})
$$

- $\sigma^t$ 可表示为 $\gcd(n, t)$ 个长为 $\frac{n}{\gcd(n, t)}$ 的轮换；
- 对于第 $i$ 个轮换 $c'_i$：
  $$
  c'_i[j] = c[(i + ej) \bmod n]
  $$

借助这一性质可以 $\mathcal{O}(N)$ 求得任一置换的幂。


# 置换群

$n$ 个元的所有置换，在复合运算 $\circ$ 下成群，称作 $n$ 元对称群 $S_n$

- 结合律：$(f \circ g) \circ h = f \circ (g \circ h)$
- 单位元：恒等置换 $e$；
- 逆元显然存在。

::: notes

对于结合律的进一步说明：等式两边都是 f(g(h(x)))

:::

# 群在集合上的作用

设 $G$ 是一个群，$M$ 是一个集合。若 $G$ 中每个元 $\sigma$ 都对应于 $M$ 的一个变换，对 $\forall m \in M$ 记变换结果为 $\sigma \circ m$，且满足：

- $\exist e \text{ \ s.t. \ } \forall m \in M, \ e \circ m = m$；
- $\forall \tau, \sigma \in G, \ (\tau\sigma) \circ m = \tau \circ (\sigma \circ m)$
  
则称 $G$ 在 $M$ 上有**群作用**。

## 轨道

群 $G$ 作用于集合 $M$ 上，$x \in M$，称 $M$ 的子集

$$
O_x = \{ g \circ x \mid g \in G \}
$$

为 $x$ 在 $G$ 作用下的轨道，简称过 $x$ 的轨道。

---

$$
O_x = \{ g \circ x \mid g \in G \}
$$


- $x \in O_x$；
- 若 $y \in O_x$，则 $x \in O_y$；
- 若 $z \in O_y, y \in O_x$，则 $z \in O_x$。


::: notes

1. 既然是置换群，必然有恒等置换；
2. 既然置换群中逆元存在，有能把 x 变成 y 的置换则一定也有能把 y 变成 x 的置换；
3. 既然置换群中的运算封闭，若有置换能使 x -> y，另一置换能使 y -> z，则一定有一个置换能使 x -> z。

:::

---

- 若 $y \in O_x$，则 $O_x = O_y$；
- $O_x$ 和 $O_y$ 要么重合，要么不相交；
- 在 $M$ 的每一条轨道上取一个元素组成 $M$ 的一个子集 $I$，称为 $M$ 的**轨道的代表元集**，则：

  $$
  M = \bigcup\limits_{x \in I} O_x
  $$

  并且此中各 $O_x$ 互不相交。

---

**怎么求群作用于集合的轨道数？**

---

### 有什么意义？

解决一类求本质不同方案个数的问题！

- $n$ 颗宝石围成一圈制成项链，每颗宝石有 $m$ 种颜色选择，能得到多少种本质不同的染色方案？
  - $R - G - B$ 和 $G - B - R$？
  - $R - G - B$ 和 $R - B - G$？
- $n$ 个点构成本质不同的无向图个数？
  - 若对无向图 $G_1$ 中的点重新编号能得到 $G_2$，那么 $G_1 \sim G_2$。


# Burnside 定理

设有限群 $G$ 作用于有限集 $X$ 上，则轨道数：

$$
|X/G| = \frac{1}{|G|} \sum\limits_{g \in G} |X^{g}|
$$

其中 $X^{g}$ 代表 $g$ 的不动元构成的集合：

$$
X^{g} = \{ x \in X \mid g \circ x = x \}
$$

## 例子

对正六边形的 $6$ 个顶点，一半涂黑色一半涂白色。若经过旋转可相互得到的方案算同一种方案，求染色方案数？

---

### 分析

$$
M = \text{所有涂色方案， 共：} \binom{6}{3} = 20 \text{ 种}
$$

$$
G = \{ 0^\circ, 60^\circ, 120^\circ, 180^\circ, 240^\circ, 300^\circ \} \\
\text{（绕中心顺时针旋转）}
$$

记 $6$ 个顶点分别为 $A_1, A_2, \dots, A_6$。

---

### 旋转 $0^\circ$

$$
\left(\begin{array}{c} 
A_1 & A_2 & A_3 & A_4 & A_5 & A_6 \\ 
A_1 & A_2 & A_3 & A_4 & A_5 & A_6 
\end{array}\right)
$$

将这一置换作用于 $M$ 中的任意元素都不会使该元素发生变化，故不动元有 $20$ 个。

---

### 旋转 $60^\circ$

$$
\left(\begin{array}{c} 
A_1 & A_2 & A_3 & A_4 & A_5 & A_6 \\ 
A_6 & A_1 & A_2 & A_3 & A_4 & A_5 
\end{array}\right)
$$

若要成为不动元，则应当满足：

$$
A_1 = A_2 = \dots = A_6
$$

故没有不动元

---

### 旋转 $120^\circ$

$$
\left(\begin{array}{c} 
A_1 & A_2 & A_3 & A_4 & A_5 & A_6 \\ 
A_5 & A_6 & A_1 & A_2 & A_3 & A_4 
\end{array}\right)
$$

若要成为不动元，则应当满足：

$$
A_1 = A_3 = A_5, \ A_2 = A_4 = A_6
$$

故不动元数量为 $2$

---

### 旋转 $180^\circ$

$$
\left(\begin{array}{c} 
A_1 & A_2 & A_3 & A_4 & A_5 & A_6 \\ 
A_4 & A_5 & A_6 & A_1 & A_2 & A_3 
\end{array}\right)
$$

若要成为不动元，则应当满足：

$$
A_1 = A_4, \ A_2 = A_5, \ A_3 = A_6
$$

故没有不动元

---

由于顺时针和逆时针旋转是等价的，因此：

- 旋转 $60^\circ$ 与 旋转 $300^\circ$ 情形相似；
- 旋转 $120^\circ$ 与 旋转 $240^\circ$ 情形相似。

轨道数：$\frac{1}{6}(20 + 2 + 2) = 4$

# Pólya 计数法

- 将置换表示为若干轮换乘积，若轮换内元素颜色均相同即为不动点……
- 记颜色数量为 $m$，$c(g)$ 为置换 $g$ 被分解为不交轮换乘积的个数：

$$
|X^{g}| = m^{c(g)}, \ |X/G| = \frac{1}{|G|} \sum\limits_{g \in G} m^{c(g)}
$$

## 项链染色

长为 $n$ 的环，$m$ 种颜色对环上元素染色，经旋转或翻转都算作相同方案

$n, m \le 10^9$

---

### 旋转

$$
G = \{ \frac{2\pi}{n}, \dots, (n - 1)\frac{2\pi}{n}, 2\pi \}
$$

旋转 $i \cdot \frac{2\pi}{n}$ 时，可拆成 $\gcd(n, i)$ 个轮换，故：

$$
\sum\limits_{g \in G} |X^g| = \sum\limits_{i = 1}^{n} m^{\gcd(n, i)}
$$

---

$$
\begin{aligned}
\sum\limits_{g \in G} |X^g| 
& = \sum\limits_{i = 1}^{n} m^{\gcd(n, i)} \\
& = \sum\limits_{d \mid n} m^d \sum\limits_{i = 1}^{n} [ \gcd(n, i) = d ] \\
& =\sum\limits_{d \mid n} m^d \sum\limits_{i = 1}^{n} [ \gcd(\frac{n}{d}, i) = 1 ] \\
& = \sum\limits_{d \mid n} m^d \cdot \varphi(\frac{n}{d})
\end{aligned}
$$

复杂度变成了 $\mathcal{O}(\sqrt{N})$

---

### 翻转

- $n$ 为偶数：
  - $\frac{1}{2}n$ 条过点的对称轴：$c(g) = \frac{1}{2}n + 1$
  - $\frac{1}{2}n$ 条过边的对称轴：$c(g) = \frac{1}{2}n$
- $n$ 为奇数：
  - $n$ 条 既过点又过边的对称轴：$c(g) = \frac{1}{2}(n - 1) + 1$

$$
|G'| = n
$$

---

$$
|X/G| = \frac{1}{|G| + |G'|} (\sum\limits_{g \in G} |X^g| + \sum\limits_{g' \in G'} |X^{g'}|)
$$

# 完全图同构计数

$n$ 个点无向完全图，$m$ 种颜色给边染色，求互不同构无向完全图个数。

$n \le 60, \ m \le 10^3$

::: fragment
- 两张图若**对点重标号**后可以重合即为同构；
- 把边的不存在当作一种颜色可将其推广至一般无向图同构。
:::

## 分析

- 对点的置换群即 $n$ 阶对称群 $S_n$，$|S_n| = n!$
- 每个点置换可以被表示成若干点轮换的乘积，而该点置换下，边两端的两点有两种情况：
  - 在同一个轮换里；
  - 在两个不同轮换里。

::: notes

注意接下来考虑的是轮换，那么对应的操作就是循环右移

:::

---

- 两点在同一轮换里的边：记点轮换大小为 $x$，则可构成 $\left\lfloor \frac{x}{2} \right\rfloor$ 个边轮换。

  考虑 $x$ 个点构成的完全图，将点等距离放在圆周上，则显然长度相等的线段构成一个边轮换，共 $\left\lfloor \frac{x}{2} \right\rfloor$ 个。

---

- 两点在不同轮换里的边：记点轮换大小分别为 $x, y$，则可构成 $\gcd(x, y)$ 个边轮换。

  需要移 $\text{lcm}(x, y)$ 次才能转回原图形，发现每个轮换大小均为 $\text{lcm}(x, y)$。共 $xy$ 条边，则轮换个数 $\frac{xy}{\text{lcm}(x, y)} = \gcd(x, y)$ 个。 

---

- 对 $n$ 的每一种拆分方案：$n = \sum\limits_{i = 1}^{k} t_i a_i$，其中 $a_i$ 代表点轮换大小，$t_i$ 为该大小的点轮换个数。则满足上述条件的点置换个数为：
$$
\frac{n!}{\prod\limits_{i = 1}^{k} t_i! \cdot a_i^{t_i}}
$$

---

- 其中除去 $a_i^{t_i}$ 的原因是因为每个大小为 $a_i$ 的点轮换会被重复算 $a_i$ 次。
- 爆搜所有的拆分方案即可，同一边轮换内的边都应当同色，运用一下 Pólya 定理即可。

# 南昌 J. Summon

现要从 $4$ 种不同的水晶中取 $n$ 个围成一个圈，但有 $m$ 个限制条件：每条限制条件要求某四种水晶不能在围成的圈中连续出现。通过旋转可互相得到的方案算作一种方案，问有多少种本质不同的方案？（结果模 $998244353$）

$n \le 10^5, m \le 256$


## 分析

- 由于带上了限制条件，无法直接通过 Pólya 计数法得到结果；
- 若有 $m$ 个轮换，则只需要确定前 $m$ 个水晶的颜色即可！

---

- 记 $a\langle i, j, k, l \rangle$ 代表是否允许 $i, j, k, l$ 四种颜色相邻；
- 记 $dp\langle i, j, k, l \rangle$ 代表 $i$ 个水晶排成一排，最后三个元素的颜色分别为 $j, k, l$，则方案数：
  $$
  dp\langle i, j, k, l \rangle = \sum\limits_{s} dp \langle i - 1, s, j, k \rangle \cdot a \langle s, j, k, l \rangle
  $$
- 枚举前三个水晶的颜色 $\langle j, k, l \rangle$，则 $dp \langle i + 3, j, k, l \rangle$ 代表围成一圈时满足题目条件的不动点个数。

---

$$
  dp\langle i, j, k, l \rangle = \sum\limits_{s} dp \langle i - 1, s, j, k \rangle \cdot a \langle s, j, k, l \rangle
$$

$$
\begin{aligned}
  \begin{bmatrix}
    dp \langle i, 1, 1, 1 \rangle \\
    dp \langle i, 1, 1, 2 \rangle \\
    \vdots \\
    dp \langle i, 4, 4, 4 \rangle
  \end{bmatrix}
\end{aligned}
=
\begin{aligned}
  \begin{bmatrix}
    dp \langle i - 1, 1, 1, 1 \rangle \\
    dp \langle i - 1, 1, 1, 2 \rangle \\
    \vdots \\
    dp \langle i - 1, 4, 4, 4 \rangle
  \end{bmatrix}
\end{aligned}
\cdot T
$$

$$
T[\langle s, j, k \rangle][\langle j, k, l \rangle] = a \langle s, j, k, l \rangle
$$

---

- 旋转 $i \cdot \frac{2\pi}{n}$ 下不动点个数：
  $$
  \sum\limits_{\langle a, b, c \rangle} dp \langle \gcd(n, i) + 3, a, b, c \rangle
  $$
- 接下来记之为 $f(\gcd(n, i))$
- 做一次矩阵快速幂即可得解，复杂度：$\mathcal{O}(64^2\log{n})$

---

- 不动点个数：
$$
\begin{aligned}
\sum\limits_{i = 1}^{n} f(\gcd(n, i)) 
& = \sum\limits_{d \mid n} f(d) \cdot \sum\limits_{i = 1}^{n} [\gcd(n, i) = d] \\
& = \sum\limits_{d \mid n} f(d) \cdot \varphi(\frac{n}{d})
\end{aligned}
$$
- 复杂度就变成了 $\mathcal{O}(\sqrt{n} \cdot 64^2\log{n})$

# 2018 多校. Kaleidoscope

咕咕咕……

# 银川 M. Crazy Cake

圆周上均匀分布 $n$ 个点，现可连接若干点对，但要求连出的线段不可在圆内部相交（但可以在圆上相交）。经过旋转可相互得到的方案算作相同方案，有多少种本质不同方案数？（$T$ 次询问，结果模 $10^9 + 7$）

$$
T \le 10^5, 2 \le n \le 10^6
$$


## 分析

- 置换群？顺时针旋转 $\frac{2\pi}{n}, 2 \times \frac{2\pi}{n}, \dots, 2\pi$；
- 集合？所有**内部不相交**的方案；
- 每一种置换可表示为 $\frac{n}{d}$ 个长为 $d$ 的轮换。

---

$d = n$ 时的情形（即旋转 $2\pi$）：

- 等价于询问不考虑同构时的方案数……
- 圆周上的 $n$ 条线段不会导致相交，故先只考虑圆内部的连边……
- 记 $f(n)$ 代表 $n$ 个点只考虑**内部**连边的方案数，则旋转 $2\pi$ 时不动点个数为：

$$
2^n \cdot f(n)
$$

---

首先考虑 $0$ 号点没有连边的情况：

- 把 $0$ 号点删掉不影响答案；
- 考虑如何从 $f(n - 1)$ 转移？

---

![](./assets/yinchuan-m-01.png){ .plain }

$$
2 \cdot f(n - 1)
$$

::: notes

在考虑 f(n - 1) 时，n - 2 和 n 是相邻点故我们没有考虑它们间的相邻情况；而当考虑 f(n) 是，n - 2 和 n 不是相邻点了，而这两个点是否相连都不会影响答案，所以此时方案数是 2 * f(n - 1)。

:::

---

其次考虑 $0$ 号点有连边的情况：

- 记 $0$ 号点连出的**最小标号**为 $i \in [1, n - 1]$；
- 上面这条线将图形分成了 $2$ 个部分

---

![](./assets/yinchuan-m-02.png){ .plain }

$$
2 \cdot f(i) \cdot f(n - i + 1) \quad (i \ge 3)
$$

::: notes

别忘了 i = 0, 1, n - 1 是不用考虑的……

不清楚的话自己想想为什么 :P

（定义 f 的时候就把相邻点连边排除在外了）

:::

---

综上所述

$$
\begin{aligned}
f(n) & = 2f(n - 1) \\
& + f(n - 1) + 2\sum\limits_{i = 3}^{n - 2} f(i) \cdot f(n - i + 1)
\end{aligned}
$$

---

$d \neq n$ 的情形

- 先对每个轮换单独考虑；
- 轮换内部相邻两个点连线不会导致相交，故还是先考虑内部连边；
- WIP
  

# 谢谢大家

# 推荐题目 - Lv1

- [HDU 1817: Necklace of Beads](http://acm.hdu.edu.cn/showproblem.php?pid=1817)
- [HDU 3547: DIY Cube](http://acm.hdu.edu.cn/showproblem.php?pid=3547)
- [HDU 3441: Rotation](http://acm.hdu.edu.cn/showproblem.php?pid=3441)
- [POJ 2888: Magic Bracelet](http://poj.org/problem?id=2888)
- [洛谷 P1446: Cards](https://www.luogu.com.cn/problem/P1446)
- [洛谷 P4727: 图的同构计数](https://www.luogu.com.cn/problem/P4727)


# 推荐题目 - Lv2

- [ICPC 2014 鞍山 K: Colorful Toy](http://acm.hdu.edu.cn/showproblem.php?pid=5080)
- [HDU 6360: Kaleidoscope](http://acm.hdu.edu.cn/showproblem.php?pid=6360)
- [ICPC 2019 南昌 J: Summon](https://nanti.jisuanke.com/t/42585)
- [ICPC 2019 银川 M: Crazy Cake](https://nanti.jisuanke.com/t/42393)




