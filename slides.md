---
author: [ver 0310 未完成]
title: 浅谈置换群
date: 2020.03
---

# 群 $(G, \cdot)$ { #group }

$G$ 是非空集合，且二元运算满足：

- 结合律：$(a \cdot b) \cdot c = a \cdot (b \cdot c)$
- 单位元 $e$：$\forall a \in G, \ ea = ae = a$ 
- 逆元：$\forall a \in G, \ \exist b \in G \text{ \ s.t. \ } ab = ba = e$
  
::: { .fragment }

若满足交换律，则为**交换群** 

:::

---

- 左右逆元相等：
  - 设 $x$ 是 $a$ 的左逆元，$y$ 是 $a$ 的右逆元，有：
  
    $$
    x = xe = x(ay) = (xa)y = y
    $$

- 满足消去律：
  - $\forall a, b, c \in G, \ ab = ac \Leftrightarrow b = c$

::: { .notes }

只要逆元存在就满足消去律：两边都乘上 $a^{-1}$ 即可。

:::  


## 子群 { #subgroup }

设 $(G, \cdot)$ 为群，$H$ 是 $G$ 的子集，若 $(H, \cdot)$ 成群，则称 $H$ 为 $G$ 的子群，记作 $H \le G$；

# 关系 { #relation }

- 集合的**笛卡尔积 (Cartesian product)**：
$$
A \times B = \left\{ (a, b) \mid a \in A, b \in B \right\}
$$
- 设 $A$ 是集合，集合 $A \times A$ 的每个子集 $R$ 叫做集合 $A$ 上的一个**关系 (relation)**。
- 若 $(a, b) \in R$，则称 $a$ 和 $b$ 有关系 $R$，记作 $aRb$。

## 等价关系 { #equivalence-relation }

若集合 $A$ 上的关系 $\sim$ 满足如下条件：

- **自反性**：$\forall a \in A$，$a \sim a$；
- **对称性**：$\forall a, b \in A$，若 $a \sim b$ 则 $b \sim a$；
- **传递性**：$\forall a, b \in A$，若 $a \sim b, \ b \sim c$，则 $a \sim c$；

则称 $\sim$ 是**等价关系 (equivalence relation)**。

::: { .notes }

举个例子：$a \sim b := a \equiv b \pmod 7$

这就是个等价关系（试着验证一下？）。

:::

# 等价类 { #equivalence-class }

设 $\sim$ 是 $A$ 上的等价关系，$\forall a \in A$，$[a]$ 表示 $A$ 中与 $a$ 等价的全部元素构成的集合：

$$
[a] = \left\{ b \in A \mid b \sim a \right\}
$$

称 $[a]$ 为 $a$ 所在的**等价类 (equivalence class)**。

---

**若 $a, b \in A$ 且 $[a] \cap [b] \neq \emptyset$，则 $[a] = [b]$。**


::: { .fragment .fade-in-then-out style="height:0" }

- 假设 $k_1 \in [a]$ 且 $k_1 \notin [b]$，$k_2 \in [a] \cap [b]$；
- 则有 $k_1 \sim a, \ k_2 \sim a, \ k_2 \sim b$；
- 由传递性得 $k_1 \sim b$，与假设不符。

::: 

::: { .fragment }

- 集合 $A$ 可看作一些两两不相交的等价类的并：
  $$
  A = \bigcup\limits_{a \in R} [a] \text{（两两不相交之并）}
  $$
- $A$ 上的每个等价关系给出集合 $A$ 的一个**划分 (partition)**。

:::

::: { .notes }

关于 $R$，事实上是完全代表系，由等价类 $[a_i]$ 中选出一个元素构成，使得 $A$ 中每个元素都与 $R$ 中的某个元素等价，同时 $R$ 中的元素彼此不等价。

对于划分的定义：若 $A$ 是它的某些子集 $\{ A_i | i \in I \}$ 之并，且 $A_i$ 两两不交，则称其为集合 $A$ 的一个划分（或分拆）。 

我们可以看到，引入等价类的意义就是为了对集合中的元素进行某种程度上的分类。后面要介绍的轨道、陪集等本质上都是基于等价关系的。

:::

# 陪集 { #coset }

设 $H \leq G$，对于 $x \in G$：

- $H$ 的一个**左陪集 (left coset)** $xH$：
  $$
  xH = \{ x \cdot h \mid h \in H \}
  $$
- $H$ 的一个**右陪集 (right coset)** $Hx$：
  $$
  Hx = \{ h \cdot x \mid h \in H \}
  $$

::: { .notes }

由于左右陪集相关内容是相似的，所以接下来只会分析左陪集。

:::

---

$$
\begin{aligned}
xH & = \{ x \cdot h \mid h \in H \} \\
Hx & = \{ h \cdot x \mid h \in H \}
\end{aligned}
$$

::: { .fragment }

- **自反性**：$x \in xH$；
- **对称性**：若 $y \in xH$，则 $x \in yH$；
- **传递性**：若 $z \in yH, \ y \in xH$，则 $z \in xH$。

:::

::: { .notes }

注意陪集不一定是 $G$ 的一个子群。

💡 提示:

1. 既然 $H$ 还是群，那么肯定有单位元；
2. 既然 $H$ 中逆元存在，有 $y = x \cdot h$， 自然有 $x = y \cdot h^{-1}$ 且 $h^{-1} \in H$；
3. $z = y \cdot h_1, \ y = x \cdot h_2 \Rightarrow z = x \cdot h_2h_1$，又 $h_2h_1 \in H$，自然得证。

:::

---

- 若 $xH \cap yH \neq \emptyset$，则 $xH = yH$；
- 利用陪集可以对群 $G$ 进行划分：
  
  $$
  G = \bigcup\limits_{g \in R} gH \text{（两两不相交之并）}
  $$

---

- 对于 $a, b \in H$，由消去律 $a \neq b \Leftrightarrow ag \neq bg$；
- 因此，$\forall g \in R, \ \mid gH \mid = \mid H \mid$:
  $$
  \mid G \mid = \sum\limits_{g \in R} \mid gH \mid 
  = \sum\limits_{g \in R} \mid A \mid 
  = \mid R \mid \cdot \mid H \mid
  $$

::: { .notes }

利用群 $G$ 的一个子群 $H$，我们可以把利用陪集对 $G$ 进行划分。换句话说，群 $G$ 一定可以表示成若干个 $H$ 的互不相交的左（右）陪集之并，而这些陪集的大小都是相同的。形象地理解，就是我们能够把 $G$ 划分成大小相等的若干部分。 

把 $\mid R \mid$ 记作群 $H$ 对群 $G$ 的指数 $[G : H]$，就可以得到拉格朗日定理……

:::

# 拉格朗日定理 { #lagrange-theorem }

设 $G$ 为有限群，$H \leq G$，则：

$$
\mid G \mid = [G : H] \cdot \mid H \mid
$$

其中 $[G : H]$ 称为群 $H$ 对于群 $G$ 的**指数 (index)**。

::: { .notes }

说明 G 的子群 H 的大小一定是 G 大小的因子。

:::

# 置换 { #permutation }

一个集合的**置换 (permutation)** 即从该集合映射至自身的双射。

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

::: { .fragment }

$$
\begin{aligned}
1 & \rightarrow 4 \rightarrow 3 \\
2 & \rightarrow 5 \rightarrow 6
\end{aligned}
$$

任一置换都能被划分成若干不交的映射链？

:::


::: { .notes }

如果可以的话，这就意味着我们发现了一种能够更简单表示置换的方式（也就是后面要介绍的轮换表示法）。

:::

## 轮换表示法 { #cycle-notation }

$$ 
\left(\begin{array}{c}
a_1 & a_2 & \dots & a_n \\
a_2 & a_3 & \dots & a_1
\end{array}\right) \xRightarrow{\text{记作}} (a_1 \enspace a_2 \enspace \dots \enspace a_n)
$$

## 例 { #cn-example }

$$
\left(\begin{array}{c} 
1 & 2 & 3 & 4 & 5 & 6 \\ 
4 & 5 & 1 & 3 & 6 & 2 
\end{array}\right)
= (1 \enspace 4 \enspace 3) \cdot (2 \enspace 5 \enspace 6)
$$

::: { .fragment }

**若不计轮换内外的次序，对于任意置换的不交轮换分解是唯一的吗？**

:::

::: { .notes }

显然不交的轮换在复合时是满足交换律的，但是如果两个轮换相交就不好说了，例如试试计算 (1 2 3) * (3 4) 是否等于 (3 4) * (1 2 3)。

:::

---

- 对于恒等置换，显然分解是唯一的；
- 对于非恒等置换，$\exist i \text{ \ s.t. \ } \sigma(i) \neq i$。
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

## 轮换的幂运算 { #power-of-cycle }

::: { .fragment .current-visible style="height:0" }

$$
(1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)
$$

:::

::: { .notes }

既然任意置换都可以被分解成若干不交轮换之积，那么如果轮换的幂运算能够快速进行，我们就可以快速地对任意置换进行幂运算。

:::

::: { .fragment .fade-in-then-out style="height:0" }

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^2 \\
& = (1 \enspace 3 \enspace 5) \cdot (2 \enspace 4 \enspace 6)
\end{aligned}
$$

:::

::: { .fragment .fade-in-then-out style="height:0" }

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^3 \\
& =  (1 \enspace 4) \cdot (2 \enspace 5) \cdot (3 \enspace 6)
\end{aligned}
$$

:::

::: { .fragment .fade-in-then-out style="height:0" }

$$
\begin{aligned}
& (1 \enspace 2 \enspace 3 \enspace 4 \enspace 5 \enspace 6)^4 \\
& = (1 \enspace 5 \enspace 3) \cdot (2 \enspace 6 \enspace 4)
\end{aligned}
$$

:::

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
- $a_i$ 所在轮换里第 $j \ (0 \le j < \gcd(n, t) )$ 个元素为 $a_{(i + jt) \bmod n}$。

  ::: { .fragment }
  - $a_i$ 所在轮换内元素下标模 $\gcd(n, t)$ 均为 $i$；
  - $a_0, a_1, \dots a_{\gcd(n, t) - 1}$ 一定位于不同轮换。
  :::

::: notes

两个推论的证明不难（用初等数论就可以解决），大家可以自行思考……

💡 提示：

1. $\because \gcd(n, t) \mid t, \ \therefore \ i + jt \equiv i \pmod \gcd(n, t)$ 
2. 可看作上一条的推论。

:::


# 置换群 { #permutation-group }

$n$ 个元的所有置换，在复合运算 $\circ$ 下成群，称作 $n$ 元**对称群** $S_n$

- 结合律：$(f \circ g) \circ h = f \circ (g \circ h)$
- 单位元：恒等置换 $\epsilon \circ x = x$；
- 逆元显然存在。

::: { .notes }

对于结合律的进一步说明：等式两边都是 f(g(h(x)))

:::

# 群在集合上的作用 { #group-action }

设 $G$ 是一个群，$M$ 是一个集合。若 $G$ 中每个元 $\sigma$ 都对应于 $M$ 的一个变换，对 $\forall m \in M$ 记变换结果为 $\sigma \circ m$，且满足：

- $\exist e \text{ \ s.t. \ } \forall m \in M, \ e \circ m = m$；
- $\forall \tau, \sigma \in G, \ (\tau\sigma) \circ m = \tau \circ (\sigma \circ m)$
  
则称 $G$ 在 $M$ 上有**群作用 (group action)**。

::: { .notes }

其实任意群斗都与某个置换群同构，但是碍于主题，这里不会展开讲。对于后续所讲述的群都可默认为置换群。

:::

# 轨道 { #orbit }

群 $G$ 作用于集合 $M$ 上，$x \in M$，称 $M$ 的子集

$$
\text{orb}_G(x) = \{ \sigma \circ x \mid \sigma \in G \}
$$

为 $x$ 在 $G$ 作用下的**轨道 (orbit)**，简称过 $x$ 的轨道。

::: { .notes }

其实本质上就是等价类…… 部分地方记作 $\mathcal{O}_G(x)$，也有的地方直接用等价类的符号 $[x]$。

:::

---

$$
\text{orb}_G(x) = \{ \sigma \circ x \mid \sigma \in G \}
$$

- **自反性**：$x \in \text{orb}_G(x)$；
- **对称性**：若 $y \in \text{orb}_G(x)$，则 $x \in \text{orb}_G(y)$；
- **传递性**：若 $z \in \text{orb}_G(y), y \in \text{orb}_G(x)$，则 $z \in \text{orb}_G(x)$。

::: { .notes }

定义关系 $x \sim y := x \in \text{orb}_G(y)$，那么这是一个等价关系~

💡 提示:

1. 既然是置换群，必然有恒等置换；
2. 既然置换群中逆元存在，有能把 x 变成 y 的置换则一定也有能把 y 变成 x 的置换；
3. 既然置换群中的运算封闭，若有置换能使 x -> y，另一置换能使 y -> z，则一定有一个置换能使 x -> z。

:::

---

- 若 $\text{orb}_G(x) \cap \text{orb}_G(y) \neq \emptyset$，则 $\text{orb}_G(x) = \text{orb}_G(y)$；
- 在 $M$ 的每一条轨道上取一个元素组成 $M$ 的一个子集 $R$，称为 $M$ 的**轨道的代表元集**，则：

  $$
  M = \bigcup\limits_{x \in R} \text{orb}_G(x)
  $$

  并且此中各 $\text{orb}_G(x)$ 互不相交。

---

### 求轨道数量？ { #whats-the-meaning }

::: { .fragment }

解决一类求本质不同方案个数的问题！

:::

---

- 在等边三角形顶点上染色，可得到多少本质不同的三角形？

::: { .fragment .fade-in-then-out style="height:0" }

![在旋转意义下同构](./assets/meaning-example-01.png){ .plain }

:::

::: { .fragment .fade-in-then-out style="height:0" }

![在翻转意义下同构](./assets/meaning-example-02.png){ .plain }

:::

::: { .fragment }

$$
\begin{aligned}
G_1 & = \{ \text{顺时针旋转 } 120^\circ, 240^\circ, 360^\circ \} \\
G_2 & = \{ \text{ 不翻转、沿着过 $0, 1, 2$ 的对称轴翻转 } \} \\
M & = \{ 所有不考虑同构下不同的染色方案 \}
\end{aligned}
$$

$G_1 \cup G_2$ 作用于 $M$ 后，轨道数即为所求答案。

::: 

::: { .notes }

一个很**关键**的问题：试着验证一下为什么 $G_1 \cup G_2$ 依然是一个群。

后面还会讲到这个模型，到时候会进行一个说明。但是希望大家在此处能够注意到这一问题，并加以思考。

接下来我们要考虑的就是如何求轨道数了。

:::

# 稳定子 { #stabilizer }

设群 $G$ 作用于集合 $M$，对 $x \in M$，称

$$
\text{stab}_G(x) = \{ \sigma \in G \mid \sigma \circ x = x \}
$$

为群 $G$ 作用下 $x$ 的**稳定子 (stabilizer)**。

::: { .notes }

又称固定子群、稳定子群、稳定化子…… 有的地方也写成 $G_m$ 或 $G^m$。

:::

---

$$
\text{stab}_G(x) = \{ \sigma \in G \mid \sigma \circ x = x \} \le G
$$

::: { .fragment }

- **封闭性**：$\forall \sigma, \tau \in \text{stab}_G(x)$，$\sigma \circ \tau \circ x = \sigma \circ x = x$，故 $(\sigma \circ \tau) \in \text{stab}_G(x)$；
- **结合律**：显然置换的复合满足结合律；
- **单位元**：恒等置换 $\epsilon \circ x = x$；
- **逆元**：$\forall \sigma \in \text{stab}_G(x)$，$\sigma^{-1} \circ x = \sigma^{-1} \circ (\sigma \circ x) = \epsilon(x) = x$。

:::

---

$$
\text{stab}_G(x) = \{ \sigma \in G \mid \sigma \circ x = x \} \le G
$$

::: { .fragment .current-visible style="height:0" }

- 既然是子群，那可以用来对 $G$ 进行左陪集划分；

:::

::: { .fragment }

- $\beta \text{stab}_G(x)$ 里的元素相当于作用于 $x$ 时 $G$ 中所有与 $\beta$ 等价的置换：
  $$
  \beta \text{stab}_G(x) = \{ \tau \in G \mid \tau \circ x = \beta \circ x \}
  $$

:::

::: { .fragment }

- $\text{orb}_G(x) = \{ \sigma \circ x \mid \sigma \in G \}$ 表示作用于 $x$ 时互不等价的置换，即上述不同左陪集的数量。

:::

::: { .notes }

$\beta \text{stab}_G(x)$ 里面的元素相当于 $G$ 中与 $\beta$ 等价的置换；那么陪集的数量就代表本质不同的置换的个数…… 这不就是轨道数吗~

想想拉格朗日定理…… 于是我们便得到了轨道-稳定子定理。

:::

## 轨道-稳定子定理 { #orbit-stabilizer-theorem }

设有限群 $G$ 作用于集合 $M$ ，$x \in M$，则：

$$
\mid G \mid = \mid \text{stab}_G(x) \mid \cdot \mid \text{orb}_G(x) \mid
$$


# Burnside 引理 { #burnside-lemma }

设有限群 $G$ 作用于有限集 $M$ 上，则轨道数：

$$
\mid M / G \mid = \frac{1}{\mid G \mid} \sum\limits_{\sigma \in G} |\text{fix}(\sigma)|
$$

其中 $\text{fix}(\sigma)$ 代表 $\sigma$ 的不动元构成的集合：

$$
\text{fix}(\sigma) = \{ x \in M \mid \sigma \circ x = x \}
$$

## 证明 { #proof-of-burnside-lemma }

$$
\begin{aligned}
\text{stab}_G(x) & = \{ \sigma \in G \mid \sigma \circ x = x \}\\
\text{fix}(\sigma) & = \{ x \in M \mid \sigma \circ x = x \}
\end{aligned}
$$

$$
\sum\limits_{x \in M} \mid \text{stab}_G(x) \mid = \sum\limits_{\sigma \in G} \mid \text{fix}(\sigma) \mid
$$

::: { .notes }

稳定子是固定 $x$ 找 $\sigma$，而不动元是固定 $\sigma$ 找 $m$，故对于下面的等式两边本质上只是换了一下遍历的顺序。

:::

---

::: { .fragment .fade-out style="height:0" data-fragment-index="1" }

- 每个轨道对答案的贡献为 $1$，故元素 $x \in M$ 对答案的贡献为 $\frac{1}{\mid \text{orb}_G(x) \mid}$；

:::

::: { .fragment data-fragment-index="1" }

$$
  \begin{aligned}
  \mid M / G \mid 
  & = \sum\limits_{x \in M} \frac{1}{ \mid \text{orb}_G(x) \mid } \\
  & = \sum\limits_{x \in M}\frac{ \mid \text{stab}_G(x) \mid }{ \mid G \mid } \text{（轨道-稳定子定理）} \\
  & = \frac{1}{\mid G \mid}\sum\limits_{\sigma \in G} \mid \text{fix}(\sigma) \mid
  \end{aligned}
$$

:::

## 例子 { #bs-example }

对正六边形的 $6$ 个顶点，一半涂黑色一半涂白色。若经过旋转可相互得到的方案算同一种方案，求染色方案数？

---

### 分析

$$
M = \text{所有涂色方案， 共：} \binom{6}{3} = 20 \text{ 种}
$$

$$
G = \{ 60^\circ, 120^\circ, 180^\circ, 240^\circ, 300^\circ, 360^\circ \} \\
\text{（绕中心顺时针旋转）}
$$

记 $6$ 个顶点分别为 $A_1, A_2, \dots, A_6$。

---

### 旋转 $360^\circ$

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

- 旋转 $60^\circ$ 与 旋转 $300^\circ$ 情形相似；
- 旋转 $120^\circ$ 与 旋转 $240^\circ$ 情形相似。

轨道数：$\frac{1}{6}(20 + 2 + 2) = 4$



# Pólya 计数定理 { #polya-enumeration-theorem }

- 将置换表示为若干轮换乘积，若轮换内元素颜色均相同即为不动元……
- 记用于染色的颜色集合为 $C$， $c(\sigma)$ 为置换 $\sigma$ 被分解为不交轮换乘积的个数，则：

  ::: { .fragment .current-visible style="height:0" }
  
  $$
  \text{fix}(\sigma) = \mid C \mid^{c(\sigma)}
  $$
  :::

  ::: { .fragment }

  $$
  \mid M / G \mid = \frac{1}{\mid G \mid} \sum\limits_{\sigma \in G} \mid C \mid^{c(\sigma)}
  $$

  :::

::: { .notes }

前面讲到了置换 $\sigma$ 可以被拆成若干个长度相等的映射链，也就是若干个大小相等的轮换。考虑在原始的（不考虑同构）的染色方案集合里，什么样的元素会成为置换 $\sigma$ 的下的不动元？

是不是只要每个轮换内的点我染的颜色都一样，那么是不是就成为不动元了…… 那么根据乘法原理就可以得到 Polya 计数定理了。

:::


# 项链染色 { #coloring-necklace }

长为 $n$ 的环，$m$ 种颜色对环上元素染色，经旋转或翻转都算作相同方案

$n, m \le 10^9$

::: { .notes }

这里将之前对多边形顶点染色问题一般化。

:::

---

$$
\begin{aligned}
G_1 & = \{ \text{顺时针旋转} \frac{2\pi}{n}, \dots, (n - 1)\frac{2\pi}{n}, 2\pi \} \\
G_2 & = \{ \text{过每一条对称轴的翻转 } \} \\
M & = \{ \text{不考虑同构的所有染色方案}  \}
\end{aligned}
$$

$G = G_1 \cap G_2$ 作用于 $M$

::: { .fragment }

$$
\mid G \mid = \mid G_1 \mid + \mid G_2 \mid ?
$$

:::

---

若将环上的元素按顺时针编号：$0, 1, \dots (n - 1)$

- 顺时针旋转 $k \frac{2\pi}{n}$：$\sigma_k(i) = (i + k) \bmod n$；
- 沿过点 $a$ 的对称轴翻转：
  $$
  \tau_a(i) =
  \begin{cases}
  i & i = a \text{ \ or \ } a \text{ 对面的点 } \\
  (2a - i) \bmod n & \text{ otherwise } 
  \end{cases}
  $$

::: { .fragment .current-visible style="height:0" }

- 考虑 $i \neq a$ 的情况（$i = a$ 显然封闭），若 $2 \mid k$：
$$
\sigma_k \circ \tau_a \circ i = (2a - i + k) \bmod n = \tau_{(a + \frac{k}{2}) \bmod n}
$$

:::

::: { .fragment }

- 考虑 $i \neq a$ 的情况（$i = a$ 显然封闭），若 $2 \nmid k$：
$$
\sigma_k \circ \tau_a \circ i = (2a - i + k) \bmod n = \tau_{(a + \frac{n + k}{2}) \bmod n}
$$

:::


::: { .notes }

$n$ 为偶数时，对称轴过两个点；而 $n$ 为奇数时，对称轴过一个点和一条边。

:::

---

### 旋转

$$
G_1 = \{ \frac{2\pi}{n}, \dots, (n - 1)\frac{2\pi}{n}, 2\pi \} \quad \mid G_1 \mid = n
$$

- 旋转 $\frac{2\pi}{n}$ 时只能分解成一个不交轮换；
- 旋转 $i \cdot \frac{2\pi}{n}$ 可看作前者的 $i$ 次幂，故可拆成 $\gcd(n, i)$ 个轮换：

$$
\sum\limits_{\sigma \in G} \mid \text{fix}(\sigma) \mid = \sum\limits_{i = 1}^{n} m^{\gcd(n, i)}
$$

::: { .notes }

旋转 $\frac{2\pi}{n}$ 时显然只能拆成一个轮换。回忆前面关于快速求轮换幂的相关内容。

然而现在复杂度是 $\mathcal{O}(N)$ 的，需要借助数论知识进一步优化……

:::

---

$$
\begin{aligned}
\sum\limits_{g \in G} \mid \text{fix}(\sigma) \mid 
& = \sum\limits_{i = 1}^{n} m^{\gcd(n, i)} \\
& = \sum\limits_{d \mid n} m^d \sum\limits_{i = 1}^{n} [ \gcd(n, i) = d ] \\
& =\sum\limits_{d \mid n} m^d \sum\limits_{i = 1}^{n} [ \gcd(\frac{n}{d}, i) = 1 ] \\
& = \sum\limits_{d \mid n} m^d \cdot \varphi(\frac{n}{d})
\end{aligned}
$$

::: { .notes }

复杂度变成了 $\mathcal{O}(\sqrt{N})$

:::

---

### 翻转

$$
G_2 = \{ \text{过每一条对称轴的翻转 } \} \quad \mid G_2 \mid = n
$$

- $n$ 为偶数：
  - $\frac{n}{2}$ 条过点的对称轴：$c(g) = \frac{n}{2} + 1$
  - $\frac{n}{2}$ 条过边的对称轴：$c(g) = \frac{n}{2}$
$$
\sum\limits_{\tau \in G_2} \mid \text{fix}(\tau) \mid 
= \frac{n}{2} \cdot m^{\frac{n}{2} + 1} + \frac{n}{2} \cdot m^{\frac{n}{2}} 
$$

---

- $n$ 为奇数：
  - $n$ 条 既过点又过边的对称轴：$c(g) = \frac{n + 1}{2}$

  $$
  \sum\limits_{\tau \in G_2} \mid \text{fix}(\tau) \mid 
= n \cdot m^{\frac{n + 1}{2}}
  $$

---

$$
\begin{aligned}
\mid M / G \mid & = \frac{\sum\limits_{\sigma \in G_1} \mid \text{fix}(\sigma) \mid + \sum\limits_{\tau \in G_2} \mid \text{fix}(\tau) \mid}{\mid G_1 \mid + \mid G_2 \mid} \\
& = \frac{1}{2n}\sum\limits_{d \mid n} m^d \cdot \varphi(\frac{n}{d}) \\
& + \frac{1}{2n} \begin{cases}
\frac{n}{2} \cdot m^{\frac{n}{2} + 1} + \frac{n}{2} \cdot m^{\frac{n}{2}} & 2 \mid n \\
n \cdot m^{\frac{n + 1}{2}} & 2 \nmid n
\end{cases}
\end{aligned}
$$

# 南昌 J. Summon { #icpc-2019-nanchang-j }

现要从 $4$ 种不同的水晶中取 $n$ 个围成一个圈，但有 $m$ 个限制条件：每条限制条件要求某四种水晶不能在围成的圈中连续出现。通过旋转可互相得到的方案算作一种方案，问有多少种本质不同的方案？（结果模 $998244353$）

$n \le 10^5, m \le 256$

::: { .notes }

这其实是去年老刘专题里面一道题的稍微加强版…… 原题是要求某两种不能连续，这里改成了某四种……（POJ 2888）

:::

## 分析 { #ncj-analysis }

$$
\begin{aligned}
G & = \{ \text{顺时针旋转} \frac{2\pi}{n}, \dots, (n - 1)\frac{2\pi}{n}, 2\pi \} \\
M & = \{ \text{满足限制且不计同构的染色方案} \}
\end{aligned}
$$

::: { .fragment }

- 单单把每一个轮换内的所有元素染成相同颜色可能破坏限制条件。

:::

::: notes

之前说 Polya 计数定理的时候，我们是基于同一个轮换内的所有元素都染色成同一个颜色得出的。在这道题目里，不动元不仅要满足轮换内元素颜色相等，同时在这一前提下还要满足限制条件。我们虽然没有办法直接套用 Polya，但是只要能够求出不动点借助 Burnside 引理还是能够解决问题的……

:::

---

- 旋转 $\frac{2\pi}{n}$ 只能分解成一个不交轮换；
- 旋转 $i \frac{2\pi}{n}$ 可看作前者的 $i$ 次幂，因此：
  - 可表示为 $\gcd(n, i)$ 个不交轮换之积；
  - 标号模 $\gcd(n, i)$ 结果相同的点在同一轮换内。

::: { .fragment }

**对于旋转 $i \frac{2\pi}{n}$ 这一置换，只需确定前 $\gcd(n, i)$ 个元素的颜色即可知道该置换下不动元数量！**

:::

::: notes

换句话说，前 $\gcd(n, i)$ 个元素一定是位于不同轮换内的。对于不动点而言，既然同一轮换内染色方案一致，那么整个染色方案完全就是由前 $\gcd(n, i)$ 个元素一直往后复制这样生成的（逃

可以考虑 DP。

:::

---

- 记 $\text{v} \langle a, b, c, d \rangle$ 代表是否允许 $a, b, c, d$ 四种颜色相邻；

$$
\text{v} \langle a, b, c, d \rangle =
\begin{cases}
0 & \text{不允许 } a, b, c, d \text{ 相邻} \\
1 & \text{允许 } a, b, c, d \text{ 相邻}
\end{cases}
$$

---

- 记 $\text{dp} \langle i, a, b, c \rangle$ 代表 $i$ 个元素排成一排，最后 $3$ 个元素的颜色分别为 $a, b, c$ 的方案数：
  $$
  \text{dp} \langle i, a, b, c \rangle = \sum\limits_{k} \text{v} \langle k, a, b, c \rangle \cdot \text{dp} \langle i - 1, k, a, b \rangle
  $$

::: { .fragment }

- 枚举前 $3$ 个元素的颜色 $\langle a, b, c \rangle$：
  - 只初始化 $\text{dp} \langle 3, a, b, c \rangle = 1$；
  - $\text{dp} \langle m + 3, a, b, c \rangle$ 即为 $m$ 个元素围成环时不动元方案数。

:::

::: notes

对于环上的问题不方便考虑的话不妨先拆成链上的问题考虑（就不用考虑首尾是否满足条件）…… 

最后要考虑首尾的情况的时候，不妨在尾多 DP 三个元素，然后只取首三个元素与末三个元素相同的方案。

这样做一次 DP 复杂度是 $\mathcal{O}(256N)$ 的…… 而且对于每一种置换都要做一次…… 显然复杂度不可以接受。

看看能不能用矩阵快速幂优化。

:::

---

$$
  \text{dp} \langle i, a, b, c \rangle = \sum\limits_{k} \text{v} \langle k, a, b, c \rangle \cdot \text{dp} \langle i - 1, k, a, b \rangle
$$

$$
\begin{aligned}
  \begin{bmatrix}
    \text{dp} \langle i, 1, 1, 1 \rangle \\
    \text{dp} \langle i, 1, 1, 2 \rangle \\
    \vdots \\
    \text{dp} \langle i, 4, 4, 4 \rangle
  \end{bmatrix}
\end{aligned}
= T \cdot
\begin{aligned}
  \begin{bmatrix}
    \text{dp} \langle i - 1, 1, 1, 1 \rangle \\
    \text{dp} \langle i - 1, 1, 1, 2 \rangle \\
    \vdots \\
    \text{dp} \langle i - 1, 4, 4, 4 \rangle
  \end{bmatrix}
\end{aligned}
$$

::: { .fragment .current-visible style="height:0" }

$$
\text{dp} \langle i, a, b, c \rangle = \sum\limits_{\langle j, k, l \rangle} T[a, b, c][j, k, l] \cdot \text{dp} \langle i - 1, j, k, l \rangle
$$

:::

::: { .fragment }

$$
T[ a, b, c ][ k, a, b ] = a \langle k, a, b, c \rangle
$$

:::

---

- 枚举前三 $3$ 个元素的颜色 $\langle a, b, c \rangle$ 时，初始化：
$$
\begin{aligned}
  \begin{bmatrix}
    1 \\
    0 \\
    \vdots \\
    0
  \end{bmatrix}
\end{aligned},
\begin{aligned}
  \begin{bmatrix}
    0 \\
    1 \\
    \vdots \\
    0
  \end{bmatrix}
\end{aligned},
\dots, 
\begin{aligned}
  \begin{bmatrix}
    0 \\
    0 \\
    \vdots \\
    1
  \end{bmatrix}
\end{aligned}
$$
- 等价于 $T^{n}$ 直接乘上单位矩阵；
- $T^{n}$ 主对角线元素之和即为所有不动元数量。

::: notes

置换 $\sigma$ 下不动元的个数只跟其能被分解成不交轮换乘积的轮换个数有关。

:::

---

::: { .fragment .fade-out data-fragment-index="1" style="height:0" }

- 记 $T^i$ 对角线元素之和为 $f(i)$
- 旋转 $i \frac{2\pi}{n}$ 下不动元个数为 $f(\gcd(n, i))$

:::

::: { .fragment data-fragment-index="1" }

$$
\begin{aligned}
\sum\limits_{\sigma \in G} \mid \text{fix}(\sigma) \mid 
& = \sum\limits_{i = 1}^{n} f(\gcd(n, i)) \\
& = \sum\limits_{d \mid n} f(d) \cdot \sum\limits_{i = 1}^{n} [\gcd(n, i) = d] \\
& = \sum\limits_{d \mid n} f(d) \cdot \varphi(\frac{n}{d})
\end{aligned}
$$

 复杂度： $\mathcal{O}(\sqrt{n} \cdot 64^2\log{n})$

:::


# 完全图同构计数 { #counting-undirected-graph }

$n$ 个点无向完全图，$m$ 种颜色给边染色，求互不同构无向完全图染色方案数。

$n \le 60, \ m \le 10^3$

::: { .fragment }

- 两张图若**对点重标号**后可以重合即为同构；
- 把边的不存在当作一种颜色可将其推广至一般无向图同构。
  
:::

## 分析 { #ugph-analysis }

$$
\begin{aligned}
G & = S_n \\
M & = \{ \text{所有不计同构的无向图染色方案数} \}
\end{aligned}
$$

- 对点的置换群即 $n$ 阶对称群 $S_n$，$|S_n| = n!$
- 每个点置换可以被表示成若干点轮换的乘积，而该点置换下，边两端的两点有两种情况：
  - 在同一个轮换里；
  - 在两个不同轮换里。

::: { .notes }

前面提到了

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


# 银川 M. Crazy Cake { #icpc-2019-yinchuan-m }

圆周上均匀分布 $n$ 个点，现可连接若干点对，但要求连出的线段不可在圆内部相交（但可以在圆上相交）。经过旋转可相互得到的方案算作相同方案，有多少种本质不同方案数？（$T$ 次询问，结果模 $10^9 + 7$）

$$
T \le 10^5, 2 \le n \le 10^6
$$


## 分析 { #ycm-analysis }

- 置换群？顺时针旋转 $\frac{2\pi}{n}, 2 \times \frac{2\pi}{n}, \dots, 2\pi$；
- 集合？所有**内部不相交**的方案；
- 每一种置换可表示为 $\frac{n}{d}$ 个长为 $d$ 的轮换。

---

$d = n$ 时的情形（即旋转 $2\pi$）：

- 等价于询问不考虑同构时的方案数……
- 圆周上的 $n$ 条线段不会导致相交，故先只考虑圆内部的连边……
- 记 $f(n)$ 代表 $n$ 个点只考虑**内部**连边的方案数，则旋转 $2\pi$ 时不动元个数为：

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

::: { .notes }

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

::: { .notes }

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
  

# 谢谢大家 { #finale }

## 推荐题目 - Lv1 { #probset-1 }

- [HDU 1817: Necklace of Beads](http://acm.hdu.edu.cn/showproblem.php?pid=1817)
- [HDU 3547: DIY Cube](http://acm.hdu.edu.cn/showproblem.php?pid=3547)
- [HDU 3441: Rotation](http://acm.hdu.edu.cn/showproblem.php?pid=3441)
- [POJ 2888: Magic Bracelet](http://poj.org/problem?id=2888)
- [洛谷 P1446: Cards](https://www.luogu.com.cn/problem/P1446)
- [洛谷 P4727: 图的同构计数](https://www.luogu.com.cn/problem/P4727)


## 推荐题目 - Lv2 { #probset-2 }

- [ICPC 2014 鞍山 K: Colorful Toy](http://acm.hdu.edu.cn/showproblem.php?pid=5080)
- [HDU 6360: Kaleidoscope](http://acm.hdu.edu.cn/showproblem.php?pid=6360)
- [ICPC 2019 南昌 J: Summon](https://nanti.jisuanke.com/t/42585)
- [ICPC 2019 银川 M: Crazy Cake](https://nanti.jisuanke.com/t/42393)

