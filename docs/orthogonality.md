
# Orthogonality 

Some definitions:  

If $\boldsymbol{u}$ and $\boldsymbol{v}$ and both vectors in $\mathbb{\mathbb{R^n}}$, then the number $\boldsymbol{u}^T\boldsymbol{v}$ is called the **inner product** of $\boldsymbol{u}$ and $\boldsymbol{v}$, also denoted by $\langle\boldsymbol{u}, \boldsymbol{v}\rangle$ or $\boldsymbol{u} \cdot \boldsymbol{v}$.  Also, when $\boldsymbol{u}$ is perpendicular to $\boldsymbol{v}$ we have $\boldsymbol{u} \cdot \boldsymbol{v} = 0$.

<br>
**Norm** is a function from a vector space to a nonnegative scalar that satisfies certain properties. 

The L2 norm (most common measure of length of a vector) of $\boldsymbol{v}$ is  $||\boldsymbol{u}||$ defined by 

$$
||\boldsymbol{v}||_2 = \sqrt{v_1^2 + \cdots + v_n^2} = \sqrt{\boldsymbol{v}^T\boldsymbol{v}}
$$
The subscript $2$ can be left out in most cases. 

Moreover, the L1 norm of $\boldsymbol{v}$ is 

$$
||\boldsymbol{v}||_1 = |v_1| + \cdots + |v_n|
$$

More generally, the Lp norm is: 

$$
||\boldsymbol{v}||_p = (\sum_{i = 1}^n{x_i^p})^{1/p}
$$

For all these definitions, it can be shown that 

$$
||c\boldsymbol{v}|| = |c| \times ||\boldsymbol{v}||
$$

<br>
The **Euclidean distance** between $\boldsymbol{u}$ and $\boldsymbol{v}$ is the L2 norm of the vector $\boldsymbol{u} - \boldsymbol{v}$  

$$
\text{dist}(\boldsymbol{u}, \boldsymbol{v}) = ||\boldsymbol{u} - \boldsymbol{v}||_2
$$

## Orthogonal decomposition 


### Orthogonal complements

if vector $\boldsymbol{v}$ is orthogonal to every vector in a subspace $W$ of $\mathbb{R^n}$, then $\boldsymbol{v}$ is said to be orthogonal to $W$. The subspace that contains the set of vectors that are orthogonal to $W$ is called the **orthogonal complement**, denoted by $W^{\perp}$. 

This corresponds to discussions in \@ref(four-subspaces), where 

$$
(\text{row} A)^{\perp} = \text{Nul} A \\
(\text{col} A)^{\perp} = \text{Nul} A^T
$$

### Orthogonal sets and orthogonal basis

An orthogonal set is a set of vectors 
$\{\boldsymbol{u_1}, \dots, \boldsymbol{u_p}\}$ in $\mathbb{R^n}$, in which each pair of distinct vectors is orthogonal: $\boldsymbol{u_i}^{T} \boldsymbol{u_j} = 0 \quad i\not = j$. Note that the set do not necessarily span the whole $\mathbb{R^n}$, but a subspace $W$. 

Since vectors in orthogonal sets is mutually perpendicular, they must also be linearly independent and could form a basis for a subspace $W$. In such case, they are called **orthogonal basis**.  

There is a particular advantage in using orthogonal basis rather than other basis, because we can find a easy representation of any vector in $W$.  

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>For each $\boldsymbol{y}$ in $W$, we have the following linear combination

$$
y = c_1\boldsymbol{u_1} + \cdots + c_p\boldsymbol{u_p}
$$
  
and 

$$
c_i = \frac{\boldsymbol{y} \cdot \boldsymbol{u_i}}{\boldsymbol{u_i} \cdot \boldsymbol{u_i}} \quad i = 1, \cdots, p
$$
  
where $\{\boldsymbol{u_1}, \dots, \boldsymbol{u_p}\}$ is an orthogonal basis. </div>\EndKnitrBlock{theorem}

**Proof**

$$
\begin{split}
\boldsymbol{u_1} \cdot \boldsymbol{y} &= \boldsymbol{u_1} \cdot (c_1\boldsymbol{u_1} + \cdots + c_p\boldsymbol{u_p}) \\
  &= c_1 \boldsymbol{u_1} \cdot \boldsymbol{u_1}
\end{split}
$$
So: 

$$
c_1 = \frac{\boldsymbol{u_1} \cdot \boldsymbol{y}}{\boldsymbol{u_1} \cdot \boldsymbol{u_1}}
$$

Derivations for other $c_i$ is similar. 



### Orthogonal decomposition

**Orthogonal decomposition** split $\boldsymbol{y}$ in $\mathbb{R^n}$ into two vectors, one in $W$ and one in its orthogonal compliment $W^{\perp}$. The trick is to use $\hat{\boldsymbol{y}}$ as $\boldsymbol{y}$'s projection onto $W$, which can be represented as illustrated in \@ref(orthogonal-sets-and-orthogonal-basis), and the other term, often referred to as error term in statistics, is simply $\boldsymbol{y}- \hat{\boldsymbol{y}}$. 

$$
\boldsymbol{y} = \hat{\boldsymbol{y}} + \boldsymbol{z}= c_1\boldsymbol{u_1} + \cdots + c_p\boldsymbol{u_p} + \boldsymbol{z}\\ 
c_i = \frac{\boldsymbol{y} \cdot \boldsymbol{u}_i}{\boldsymbol{u}_i \cdot \boldsymbol{u}_i}\boldsymbol{u}_i \quad i = 1, \cdots, p 
$$

### Best approximation 

\BeginKnitrBlock{theorem}\iffalse{-91-84-104-101-32-66-101-115-116-32-65-112-112-114-111-120-105-109-97-116-105-111-110-32-84-104-101-111-114-101-109-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:best-approximation"><strong>(\#thm:best-approximation)  \iffalse (The Best Approximation Theorem) \fi{} </strong></span>Given $\boldsymbol{y}$ be any vector in $\mathbb{R^n}$, with its subspace $W$, let $\hat{\boldsymbol{y}}$ be the orthogonal projection of $\boldsymbol{y}$ onto $W$. Then $\hat{\boldsymbol{y}}$ is the closest point in $W$ to $\boldsymbol{y}$ in the sense that 

$$
||\boldsymbol{y} - \hat{\boldsymbol{y}}|| \le ||\boldsymbol{y} - \boldsymbol{v}||
$$</div>\EndKnitrBlock{theorem}

**PROOF**

Take $\boldsymbol{v}$ distinct from $\hat{\boldsymbol{y}}$ in $W$, we know that $\boldsymbol{y} - \hat{\boldsymbol{y}}$ is perpendicular to $\boldsymbol{v}$. According to Pythoagorean theorem, we have

<div class="figure" style="text-align: center">
<img src="images/best-approximation.png" alt="figure from page p352, ch6 [@lay2006-3]  " width="172" />
<p class="caption">(\#fig:unnamed-chunk-2)figure from page p352, ch6 [@lay2006-3]  </p>
</div>

$$
||\boldsymbol{y}-  \boldsymbol{v}||^2 = ||\boldsymbol{\hat{y}} - \boldsymbol{v}||^2 + ||\boldsymbol{y} -\boldsymbol{\hat{y}}||^2 
$$
When $\boldsymbol{v}$ is distinct from $\boldsymbol{\hat{y}}$, $||\boldsymbol{\hat{y}} - \boldsymbol{v}||^2$ is non-negative, so the error term of choosing $\boldsymbol{v}$ is always larger than that of the orthogonal projection $\boldsymbol{\hat{y}}$.

### Orthonormal sets and orthogonal matrices

An orthogonal set whose components are all unit vectors are said to be **orthonormal** sets. 
