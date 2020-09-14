
# Orthogonality 





## Orthogonal Decomposition 


### Orthogonal Complements

if vector $\bar{v}$ is orthogonal to every vector in a subspace $W$ of $\mathbb{R^n}$, then $\bar{v}$ is said to be orthogonal to $W$. The subspace that contains the set of vectors that are orthogonal to $W$ is called the **orthogonal complement**, denoted by $W^{\perp}$.  

$$
W^{\perp} = \{\bar{v} \in W^{\perp} | \;\bar{v} \perp \bar{x} \; \text{for all} \; \bar{x} \in W\}
$$

This corresponds to discussions in Section \@ref(fundamental-theorem), where 

$$
\mathcal{R}(A^T) = \mathcal{N}(A) \\
\mathcal{R}(A) = \mathcal{N}{(A^T)}
$$
<br>

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>If $W$ is a subspace of $\mathbb{R}^n$, $W^{\perp}$ is also a subspace of $\mathbb{R}^n$.</div>\EndKnitrBlock{theorem}

It's easy to verify that $W^{\perp}$ is closed under scalar multiplication, and under vector addition, and that any vector in $W$ has $n$ components. So that $W^{\perp}$ is a subspace of $\mathbb{R}^n$



### Orthogonal Sets and Orthogonal Basis

An orthogonal set is a set of vectors 
$\{\bar{u_1}, \dots, \bar{u_p}\}$ in $\mathbb{R^n}$, in which each pair of distinct vectors is orthogonal: $\bar{u_i}^{T} \bar{u_j} = 0 \quad i\not = j$. Note that the set do not necessarily span the whole $\mathbb{R^n}$, but a subspace $W$. 

Since vectors in orthogonal sets is mutually perpendicular, they must also be linearly independent and could form a basis for a subspace $W$. In such case, they are called **orthogonal basis**.  

There is a particular advantage in using orthogonal basis rather than other basis, because we can find a easy representation of any vector in $W$.  

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>For each $\bar{y}$ in $W$, there exists a linear combination

$$
y = c_1\bar{u_1} + \cdots + c_p\bar{u_p}
$$
  
and 

$$
c_i = \frac{\bar{y} \cdot \bar{u_i}}{\bar{u_i} \cdot \bar{u_i}} \quad i = 1, \cdots, p
$$
  
where $\{\bar{u_1}, \dots, \bar{u_p}\}$ is an orthogonal basis. </div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>

$$
\begin{split}
\bar{u_1} \cdot \bar{y} &= \bar{u_1} \cdot (c_1\bar{u_1} + \cdots + c_p\bar{u_p}) \\
  &= c_1 \bar{u_1} \cdot \bar{u_1}
\end{split}
$$
So: 

$$
c_1 = \frac{\bar{u_1} \cdot \bar{y}}{\bar{u_1} \cdot \bar{u_1}}
$$

Derivations for other $c_i$ is similar. 



### Orthogonal Decomposition

**Orthogonal decomposition** split $\bar{y}$ in $\mathbb{R^n}$ into two vectors, one in $W$ and one in its orthogonal compliment $W^{\perp}$. 

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-3"><strong>(\#thm:unnamed-chunk-3) </strong></span>Let $\mathbb{R}^n$ be a inner product space and $W$ and subspace of $\mathbb{R}^n$. Then every $\bar{v}$ in $W$ can be written uniquely in the form

$$
\bar{v} = \bar{v}_w + \bar{v}_{\perp}
$$
  
where $\bar{v}_w \in W$ and $\bar{v}_{\perp} \in W^{\perp}$</div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div> 

Let $\bar{u}_1, ..., \bar{u}_m$ be a orthonormal basis for $W$, there exists linear combination according to Section \@ref(orthogonal-sets-and-orthogonal-basis) 

$$
\bar{v}_w = (\bar{v} \cdot \bar{u}_1)\bar{u}_1 + \cdots + (\bar{v} \cdot \bar{u}_m)\bar{u}_m
$$
and 

$$
\bar{v}_{\perp} = \bar{v} - \bar{v}_w
$$
It is clear that $\bar{v}_W \in W$. And we can also show that $\bar{v}_{\perp}$ is perpendicular to $W$ 

$$
\begin{split}
\bar{v}_{\perp} \cdot \bar{u}_i &= [\bar{v}- (\bar{v} \cdot \bar{u}_1)\bar{u}_1 - \cdots - (\bar{v} \cdot \bar{u}_m)\bar{u}_m] \cdot \bar{u}_i \\
&= (\bar{v} \cdot \bar{u}_1) - [(\bar{v} \cdot \bar{u}_i)\bar{u}_i \cdot \bar{u}_i] \\
&= 0
\end{split}
$$

which implies $\bar{v}_{\perp} \in W^{\perp}$. 

To prove that $\bar{v}_w$ and $\bar{v}_{\perp}$ are unique (does not depend on the choice of basis), let $\bar{u}_1', ..., \bar{u}_m'$ be another orthonormal basis for $W$, and define $\bar{v}_w'$ and $\bar{v}_{\perp}'$ similarly we want to get $\bar{v}_w' = \bar{v}_w$ and $\bar{v}_{\perp}' = \bar{v}_{\perp}$. 

By definition 

$$
\bar{v}_w + \bar{v}_{\perp} = \bar{v} = \bar{v}_w' + \bar{v}_{\perp}' 
$$

so 

$$
\underbrace{\bar{v}_w - \bar{v}_w'}_{\in W} = \underbrace{\bar{v}_{\perp}' - \bar{v}_{\perp}}_{\in W^{\perp}}
$$
From the orthogonality of these subspaces, we have 

$$
0 = (\bar{v}_w - \bar{v}_w') \cdot (\bar{v}_{\perp}' - \bar{v}_{\perp}) = (\bar{v}_w - \bar{v}_w') \cdot (\bar{v}_w - \bar{v}_w') = \|\bar{v}_w - \bar{v}_w'\|^2
$$
Similarly we have $\|\bar{v}_{\perp}' - \bar{v}_{\perp}\|^2 = 0$. 

The existence and uniqueness of the decomposition above mean that 

$$
\mathbb{R}^n = W \oplus W^{\perp}
$$

whenever $W$ is a subspace. 

### Best Approximation 

\BeginKnitrBlock{theorem}\iffalse{-91-84-104-101-32-66-101-115-116-32-65-112-112-114-111-120-105-109-97-116-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:best-approximation"><strong>(\#thm:best-approximation)  \iffalse (The Best Approximation) \fi{} </strong></span>Given $\bar{y}$ be any vector in $\mathbb{R^n}$, with its subspace $W$, let $\hat{\bar{y}}$ be the orthogonal projection of $\bar{y}$ onto $W$. Then $\hat{\bar{y}}$ is the closest point in $W$ to $\bar{y}$ in the sense that 

$$
\|\bar{y} - \hat{\bar{y}}\| \le \|\bar{y} - \bar{v}\|
$$</div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>

Take $\bar{v}$ distinct from $\hat{\bar{y}}$ in $W$, we know that $\bar{y} - \hat{\bar{y}}$ is perpendicular to $\bar{v}$. According to Pythoagorean theorem, we have

<div class="figure" style="text-align: center">
<img src="images/best-approximation.png" alt="figure from page p352, ch6 [@lay2006-3]" width="120%" />
<p class="caption">(\#fig:unnamed-chunk-4)figure from page p352, ch6 [@lay2006-3]</p>
</div>

$$
\|\bar{y}-  \bar{v}\|^2 = \|\bar{\hat{y}} - \bar{v}\|^2 + \|\bar{y} -\bar{\hat{y}}\|^2 
$$
When $\bar{v}$ is distinct from $\bar{\hat{y}}$, $\|\bar{\hat{y}} - \bar{v}\|^2$ is non-negative, so the error term of choosing $\bar{v}$ is always larger than that of the orthogonal projection $\bar{\hat{y}}$.  


## Projection and idempotent matrices

$$
\begin{split}
P_S\bar{v} &= (\bar{v} \cdot \bar{u}_1)\bar{u}_1 + \cdots + (\bar{v} \cdot \bar{u}_m)\bar{u}_m \\
&= \bar{v}^T\bar{u}_1\bar{u}_1 + \cdots +  \bar{v}^T\bar{u}_m\bar{u}_m\\
&= (\bar{u}_1\bar{u}_1^T)\bar{v} + \cdots +  (\bar{u}_m\bar{u}_m^T)\bar{v} \\
&= (\sum_{i=1}^{M}{\bar{u}_i\bar{u}_i^T})\bar{v}\\
&= 
\begin{bmatrix}
\bar{u}_1 & \cdots & \bar{u}_m
\end{bmatrix}
\begin{bmatrix}
\bar{u}_1^T \\
\vdots \\
\bar{u}_m^T
\end{bmatrix}\bar{v} \\
&= UU^T\bar{v}
\end{split}
$$

In practical problems, it is more convenient to use matrix at hand rather than producing an orthonormal basis. 


\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-5"><strong>(\#cor:unnamed-chunk-5) </strong></span>Idempotent matrices have eigenvalues either $1$ or $0$. </div>\EndKnitrBlock{corollary}


<hr>

Another way to derive projection matrices with matrix calculus 

$$
\begin{split}
\|A\bar{x} - \bar{b}\|_2^2
&= (A\bar{x} - \bar{b})^T(A\bar{x} - \bar{b}) \\
&= \bar{x}^TA^TA\bar{x} - 2\bar{b}^TA\bar{x} + \bar{b}^T\bar{b}
\end{split}
$$

$$
\begin{split}
\nabla_{x}(\bar{x}^TA^TA\bar{x} - 2A\bar{x}\bar{b} + \bar{b}^T\bar{b}) &=\nabla_x(\bar{x}^TA^TA\bar{x}) - \nabla_x{2\bar{b}^TA\bar{x}} + \nabla_x{\bar{b}^T\bar{b}} \\
&= 2(A^TA)\bar{x} - 2A^T\bar{b}
\end{split}
$$

$$
\bar{x} = (A^TA)^{-1}A^T\bar{b}
$$
$$
A\bar{x} = A(A^TA)^{-1}A^T\bar{b} = \hat{\bar{b}}
$$


## Gram-Schmidt Process

Then Gram-Schmidt process is a simple algorithm that transforms a set of linearly independent vectors into orthogonal or orthonormal basis for a subspace. In its essence, it is a sequential projection of $\bar{x}_{i}$ onto the space spanned by the previously created orthogonal set $\{\bar{v}_{1}, ..., \bar{v}_{i-1}\}$, and take the term in the orthogonal compliment to be $\bar{v}_{i}$. 

\BeginKnitrBlock{theorem}\iffalse{-91-116-104-101-32-71-114-97-109-45-83-99-104-109-105-100-116-32-112-114-111-99-101-115-115-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:gram-schmidt"><strong>(\#thm:gram-schmidt)  \iffalse (the Gram-Schmidt process) \fi{} </strong></span>Given a basis $\{\bar{x}_1, ..., \bar{x}_p\}$ for a nonzero subspace $W$ of $\mathbb{R}^n$, define 

$$
\begin{aligned}
\bar{v}_1 &= \bar{x}_1 \\
\bar{v}_2 &= \bar{x}_2 - \frac{\bar{x}_2 \cdot \bar{v}_1}{\bar{v}_1 \cdot \bar{v}_1}\bar{v}_1 \\
\bar{v}_3 &= \bar{x}_3 
- \frac{\bar{x}_3 \cdot \bar{v}_1}{\bar{v}_1 \cdot \bar{v}_1}\bar{v}_1 
- \frac{\bar{x}_3 \cdot \bar{v}_2}{\bar{v}_2 \cdot \bar{v}_2}\bar{v}_2
\\
& \vdots \\
\bar{v}_p &= \bar{x}_p 
- \frac{\bar{x}_p \cdot \bar{v}_1}{\bar{v}_1 \cdot \bar{v}_1}\bar{v}_1 
- \frac{\bar{x}_p \cdot \bar{v}_2}{\bar{v}_2 \cdot \bar{v}_2}\bar{v}_2
- \cdots
- \frac{\bar{x}_p \cdot \bar{v}_{p-1}}{\bar{v}_{p-1} \cdot \bar{v}_{p-1}}\bar{v}_{p-1}
\end{aligned}
$$
  
Then $\{\bar{v}_1, ..., \bar{v}_p\}$ is an orthogonal basis for $W$. In addition 

$$
\text{Span}\{\bar{v}_1, ..., \bar{v}_p\} = \text{Span}\{\bar{x}_1, ..., \bar{x}_p\} 
$$</div>\EndKnitrBlock{theorem}

To make $\{\bar{v}_1, ..., \bar{v}_p\}$ an *orthonormal* basis, there is simply one more step of normalization 

$$
\{\bar{q}_i = \frac{\bar{v}_i}{\|\bar{v}_i\|}, \;i = 1, ... p\} 
$$


### QR Factorizaiton 

For $A \in \mathbb{R}^{m \times n}$ with linearly independent columns $\bar{x}_1, ..., \bar{x}_n$, apply the Gram-Schmidt process to $\bar{x}_1, ..., \bar{x}_n$ amounts to *factorizing* $A$. 
 
\BeginKnitrBlock{theorem}\iffalse{-91-81-82-32-102-97-99-116-111-114-105-122-97-116-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:qr"><strong>(\#thm:qr)  \iffalse (QR factorization) \fi{} </strong></span>if $A$ is an $m \times n$ matrix with full column rank, then $A$ can be factored as $A = QR$, where $Q$ is an $m \times n$ matrix whose columns form an orthonormal basis of $\text{Col}\;A$ and $R$ is an $n \times n$ upper triangular invertible matrix with positive entries on its diagonal. </div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>  

Because $A_{m \times n}$ is full column rank, we can transform its column vector $\{\bar{x}_{1}, ..., \bar{x}_{n}\}$ into a new set of orthonormal basis $\{\bar{q}_{1}, ..., \bar{q}_{n}\}$ with Gram-Schmidt process. Let 

$$
Q = [\bar{q}_{1} \;\; \cdots \;\; \bar{q}_{n}]
$$
For $\bar{x}_i, \; i = {1, ..., n}$ in Span$\{\bar{x}_1, ... \bar{x}_k\}$, there exists a set of constant $r_{1k}, ..., r_{kk}$ such that ^[because Span$\{\bar{x}_1, ... \bar{x}_k\}$ is the same as Span$\{\bar{u}_1, ... \bar{u}_k\}$] 

$$
\bar{x}_k = r_{1k}\bar{q}_{1} + \cdots + r_{kk}\bar{q}_{k} + 0 \cdot\bar{q}_{k+1} + \cdots + 0 \cdot \bar{q}_{n}
$$

So 

$$
A = [\bar{x}_{1} \;\; \bar{x}_{2} \;\; \cdots \;\; \bar{x}_{n}] = [\bar{q}_{1} \;\; \bar{q}_{2} \;\; \cdots \;\; \bar{q}_{n}] 
\begin{bmatrix}
r_{11} & r_{12} & \cdots & r_{1n} \\
0 & r_{22} & \cdots & r_{2n} \\
\vdots & \vdots & & \vdots\\
0 & 0 & \cdots & r_{nn}
\end{bmatrix} 
= QR
$$
We could assume that $r_{kk} \ge 0$. (if $r_{kk} < 0$, multiply both $r_{kk}$ and $\bar{u}_k$ by $-1$)

## Orthonormal Sets and Orthogonal Matrices

An orthogonal set whose components are all unit vectors is said to be **orthonormal** sets. 

### Orthogonal Matrices  

An *orthogonal matrix* is a square matrix $Q$ whose inverse is its transpose:  

$$
(\#eq:orthogonal-matrix)
QQ^T = Q^TQ = I
$$

Another way of defining it is that an orthogonal matrix has both **orthonormal columns** and **orthonormal rows**.  

Orthogonal matrices have a nice property that they preserve inner products: 

$$
(Q\bar{x})^T(Q\bar{y}) = \bar{x}^TQ^TQ\bar{y} = \bar{x}^TI\bar{y} = \bar{x}^T\bar{y}
$$

A direct result is that $Q$ preserves L2 norms 

$$
\|Q\bar{x}\|_2 = \sqrt{(Q\bar{x})^T(Q\bar{x})} = \sqrt{\bar{x}^T\bar{x}} = \|\bar{x}\|_2
$$

Therefore multiplication by an orthogonal matrix can be considered as a transformation that preserves length, but may rotate or reflect the vector about the origin. 

Note that $Q$ may not necessarily be a square matrix to satisfy $Q^TQ = I$. For exmaple $Q \in \mathbb{R}^{m \times n}, n < m$, but its columns and rows can still be orthonormal, then $QQ^T = I$. But in most cases the term orthogonal implies a square matrix $Q$. 

## Lesat Squares Problems 

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-6"><strong>(\#def:unnamed-chunk-6) </strong></span>the **normal equation** 
$$
A^TA\bar{x} = A^T\bar{b}
$$</div>\EndKnitrBlock{definition}

$$
\begin{aligned}
A^T(\bar{b} - A\hat{\bar{x}}) &= \bar{0}
\end{aligned} \\
A^T\bar{b} - A^TA\hat{\bar{x}} = 0 \\
\hat{\bar{x}} = (A^TA)^{-1}A^T\bar{b}
$$
