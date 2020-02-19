---
author: codgician
title: 浅谈置换群
date: 2020.03
---

# 群 $(G, \cdot)$

$G$ 是非空集合，且二元运算满足：

- 结合律：$(a \cdot b) \cdot c = a \cdot (b \cdot c)$
- 单位元 $e$：$\forall a \in G, \ ea = ae = a$ 
- 存在逆元：$\forall a \in G, \ \exist b \in G \text{ s.t. } ab = ba = e$  

[若满足交换律，则为**交换群**]{ .fragment }

::: notes

对于群中的运算，我们后面会较多地称其为乘法。

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
3 & 1 & 2 & 5 & 4 & 6 
\end{array}\right) = (1 \enspace 3 \enspace 2) \cdot (4 \enspace 5) \cdot (6)
$$

## 性质

- 任 $n$ 元置换可表示为若不相交的轮换乘积
- 若不计次序，这些轮换是**唯一决定**的

::: notes

不相交指子集上不相交，即不包含相同元素

:::

---

$$
\begin{aligned}
\sigma & = 
\left(\begin{array}{c}
a_1 & a_2 & \dots & a_{j - 1} & a_j & \dots \\
a_2 & a_3 & \dots & a_j & a_1 & \dots
\end{array}\right) \\
& = (a_1 \enspace a_2 \enspace \dots \enspace a_j) \cdot 
\left(\begin{array}{c}
 \dots \\
 \dots
\end{array}\right) = \dots
\end{aligned}
$$

递归进行下去，可得到：

$$
\sigma = (a_1 \enspace \dots \enspace a_j) \cdot (a_{j + 1} \enspace \dots \enspace a_e) \cdots (a_r \enspace \dots \enspace a_n)
$$

---

借助反证法证明其唯一性，若它还可被表示成：

$$
\sigma = (b_1 \enspace \dots \enspace b_i) \cdot (b_{i + 1} \enspace \dots \enspace b_t) \cdots (b_s \enspace \dots \enspace b_n)
$$

若存在两个轮换交集不为空，那么较大者一定还可以被进一步分解。

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

### 性质

若置换 $T$ 可表示为 $1$ 个长度为 $n$ 的轮换 $c$，可用如下算法求出 $T^e$ 轮换乘积形式：

- $T^e$ 可表示为 $\gcd(n, e)$ 个长度为 $\frac{n}{\gcd(n, e)}$ 的轮换 $c'$；
- 对于第 $i$ 个轮换 $c'_i$：$c'_i[j] = c[(i + ej) \bmod n]$。


# 置换群

$n$ 个元的所有置换，在复合运算 $\circ$ 下成群，称作 $n$ 元对称群 $S_n$

- 结合律：$(f \circ g) \circ h = f \circ (g \circ h)$
- 单位元：恒等置换 $e$
- 逆元显然存在

# 群在集合上的作用

设 $G$ 是一个群，$M$ 是一个集合。若 $G$ 中每个元 $\sigma$ 都对应于 $M$ 的一个变换，对 $\forall a \in M$ 记变换结果为 $\sigma \circ m$，且满足：

- $\exist e \text{ s.t. } \forall m \in M, \ e \circ m = m$；
- $\forall \tau, \sigma \in G, \ (\tau\sigma) \circ m = \tau \circ (\sigma \circ m)$
  
则称 $G$ 在 $M$ 上有**群作用**。

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

- 将置换表示为若干轮换乘积，让每个轮换内元素的颜色都相等就成为不动点了……
- 记颜色数量为 $m$，$c(g)$ 为置换 $g$ 被分解为不交轮换乘积的个数：

$$
|X^{g}| = m^{c(g)}, \ |X/G| = \frac{1}{|G|} \sum\limits_{g \in G} m^{c(g)}
$$

## 项链染色

长为 $n$ 的环，$m$ 种颜色，可旋转可翻转

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

## 完全图同构计数

$n$ 个点无向完全图，$m$ 种颜色，求本质不同无向完全图个数。

$n \le 60, \ m \le 10^3$

[两张图若对点重标号后可以重合即为同构]{ .fragment }

---

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

# 2019 南昌 Summon

现要从 $4$ 种不同的水晶中取 $n$ 个围成一个圈，但有 $m$ 个限制条件：每条限制条件要求某四种水晶不能在围成的圈中连续出现。通过旋转可互相得到的方案算作一种方案，问有多少种本质不同的方案？（结果模 $998244353$）

$n \le 10^5, m \le 256$


## 分析

- 由于带上了限制条件，无法直接通过 Pólya 计数法得到结果；
- [若有 $m$ 个轮换，则只需要确定前 $m$ 个水晶的颜色即可！]{ .fragment }

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

# 谢谢大家
