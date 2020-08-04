
# Vector spaces 

Vector spaces, metric spaces, normed spaces, and inner product spaces are places where computations in linear algebra happen. These spaces are defined more or less to generalize properties of Euclidean space.  

## Vector space 

A **vector space** $V$ is a nonempty set, the elements of which are called vectors, also called *linear spaces*. A vector space comes with two operations predefined: vectors can be added together, and vectors can be multiplied by real numbers called scalars. For all vectors $\bar{u}, \bar{v}$ and $\bar{w}$, and all scalars $c$ and $d$ in $V$, the following axioms of vector space must hold:   

1. The sum of $\bar{u}$ and $\bar{v}$ is in $V$ 

2. The scalar multiple of $\bar{u}$ by c, denoted by $c\bar{u}$, is in $V$  

3. There exists additive identity (denoted by $\bar{0}$) such that $\bar{x} + \bar{0} = \bar{x}$. Similarly, multiplicative identity (written $\bar{1}$) means $\bar{1}\bar{x} = \bar{x}$  

4. There exists an additive inverse (written $-\bar{x}$) such that $-\bar{x} + \bar{x} = \bar{0}$  

5. Communitivity: $\bar{x} + \bar{y} = \bar{y} + \bar{x}$

6. Associativity: $(\bar{x} + \bar{y}) + \bar{z} = \bar{x} + (\bar{y} + \bar{z})$, and $\alpha(\beta\bar{x}) = (\alpha\beta)\bar{x}$  

7. Distributivity: $\alpha(\bar{x} + \bar{y}) = \alpha\bar{x} + \alpha\bar{y}$ and $(\alpha + \beta)\bar{x} = \alpha\bar{x} + \beta\bar{x}$
 
 
A set of vectors $\bar{v}_1, ..., \bar{v}_n \in V$ are set to be *linearly independent* if 

$$
\begin{align*}
c_1\bar{v}_1 + \cdots + c_n\bar{v}_n &= 0 && \text{implies } c_1 = \cdots = c_n
\end{align*}
$$

The **span** of  $\bar{v}_1, ..., \bar{v}_n$  is the set of all vectors that can be expressed as a linear combination of them. 

### Euclidean space 

Euclidean space is the quintessential vector space, denoted by $\mathbb{R}^n$. 

The two must-have operations of vector spaces are valid in $\mathbb{R}^n$  

$$
\bar{x} = 
\begin{bmatrix}
x_1 \\
\vdots \\
x_n
\end{bmatrix}, \;\;
\bar{y} = 
\begin{bmatrix}
y_1 \\
\vdots \\
y_n
\end{bmatrix}, \;\;
\alpha \in \mathbb{R} \\
\bar{x} + \bar{y} = 
\begin{bmatrix}
x_1 + y_1 \\
\vdots \\
x_n + y_n
\end{bmatrix}, \;\;
\alpha\bar{x} = 
\begin{bmatrix}
\alpha x_1 \\
\vdots \\
\alpha x_n
\end{bmatrix}
$$

Euclidean spaces have other structures defined in addition to the plainest vector space. We can calculate *dot product*, *length*, *distance* by

$$
\begin{aligned}
\text{dot product between }  \bar{x} \text{ and } \bar{y}: \bar{x} \cdot\bar{y} &= \sum_{i=1}^{n}{x_iy_i} \\
\text{length of } \bar{x}: \|\bar{x}\| &= \sqrt{\bar{x} \cdot \bar{x}} \\
\text{distance between } \bar{x} \text{ and } \bar{y}: \text{dist}(\bar{x}, \bar{y}) &= \|\bar{x} - \bar{y}\|
\end{aligned}
$$



## Metric spaces, normed spaces, inner product spaces


Metric spaces, normed spaces and inner product spaces capture important properties of Euclidean space in a more general way (distance, length, angle). 

Although metric spaces are not required to be vector spaces, it is always assumed in linear algebra that this is the case. For this reason, metric spaces are short for "metric linear space". Normed spaces and inner product spaces are defined to be extensions of metric linear spaces, so that they must be vector spaces. 

<hr>

Metrics generalize the notion of distance from Euclidean space. A *metric space* is a set together with a metric on the set (metric spaces don't have to be vector spaces). The metric is a function that defines a concept of distance $\in \mathbb{R}$ between any two members of the set. A metric must satisfies the following properties: 

1. $d(\bar{x}, \bar{y}) \ge 0$, with equality if and only if $\bar{x} = \bar{y}$. Distances are non-negative, and the only point at zero distance from $x$ is $x$ itself  
2. $d(\bar{x}, \bar{y}) = d(\bar{y}, \bar{x})$. The distance is a symmetric function. 
3. $d(\bar{x}, \bar{z}) \le d(\bar{x}, \bar{y}) + d(\bar{y}, \bar{z})$. Distance satisfies triangular inequality. 

<br>

Norms generalize the notion of length from Euclidean space. 

A **norm** on a real vector space $X$ is a function: $\|\cdot\|: V \rightarrow \mathbb{R}$ that satisfies: 

1. $\|\bar{x}\| \ge 0$ for all $\bar{x} \in X$, with equality if and only if $\bar{x} = \bar{0}$ (nonnegative)  
2. $\|\lambda \bar{x}\| = \lambda \|\bar{x}\|$, for all $\bar{x} \in X$ and $\lambda \in \mathbb{R}$ (homogeneous)  
3. $\|\bar{x} + \bar{y}\| \le \|\bar{x}\| + \|\bar{y}\|$ (triangular inequality)  

**A normed space is a metric space with the metric** 

$$
d(\bar{x}, \bar{y}) = \|\bar{x} - \bar{y}\|
$$

So a normed space is a special case of metric spaces, a metric spcae may not necessarily has a norm associated with it. One can verify that $d(\bar{x}, \bar{y}) = \|\bar{x} - \bar{y}\|$ satisfies all properties of a metric. 

The most common function for norms on $\mathbb{R}^n$ are listed below, with $\bar{x} = [x_1, x_2, ..., x_n]$. 

$$
\begin{align*}
\text{1-norm}: \|\bar{x}\|_1 &= \sum_{i=1}^{n}{|x_i|}\\
\text{2-norm}: \|\bar{x}\|_2 &= \sqrt{\sum_{i=1}^{n}{x_i}^2} \\
\text{p-norm}: \|\bar{x}\|_p &= (\sum_{i=1}^{n}{|x_i|}^p)^{\frac{1}{p}} \quad (p \ge 1) \\
\text{maximum norm}: \|\bar{x}\|_{\infty} &= \max\{|x_1|, |x_2|, ..., |x_n|\}
\end{align*}
$$

1-norm is also called the Manhattan norm. 

2-norm is the Euclidean norm, the subscript $2$ can be left out in $\mathbb{R}^n$. 

p-norm is a generalization of 1-norm and 2-norm, requiring $p > 1$. When $p$ turns infinity, $\|\bar{x}\|_{\infty}$ is called the maximum norm. 

<br>

An **inner product** on a real vector space $X$ is a function $\langle \cdot, \cdot\rangle: X \times X \rightarrow \mathbb{R}$ satisfying 

1. $\langle \bar{x}, \bar{y} \rangle \ge 0$, with equality if and only if $x = \bar{0}$   
2. $\langle \bar{x}, \bar{y} \rangle = \langle \bar{y}, \bar{x} \rangle$
3. $\langle \bar{x} + \bar{y}, \bar{z}\rangle = \langle \bar{x}, \bar{z}\rangle + \langle \bar{y}, \bar{z}\rangle$ and $\langle \lambda \bar{x}, \bar{y}\rangle = \lambda \langle \bar{x}, \bar{y} \rangle$

A vector sapce equipped with such inner product is called a **inner product space**. Note that **all inner product spaces are normed spaces**, because a inner product induce a norm on a vector space: 

$$
\langle \bar{x}, \bar{x} \rangle = \|\bar{x}\|^2  
$$
The *standard inner product* defined on $\mathbb{R}^{n}$ is the dot product,  given by 

$$
\langle \bar{x}, \bar{y} \rangle = \sum_{i=1}^{n}{x_iy_i} = \bar{x}^T\bar{y}
$$


\BeginKnitrBlock{rmdnote}<div class="rmdnote">The abstract spaces—metric spaces, normed spaces, and inner product spaces—are all examples of what are more generally called “topological spaces” (linear topological space if they are assumed to be vector spaces first).  These spaces have been given in order of increasing structure. That is, every inner product space is a normed space, and in turn, every normed space is a metric space.</div>\EndKnitrBlock{rmdnote}

### Restricted definition of inner products in $R^n$

Sometimes it suffice only to generalize the dot product, with the definition of inner product, in Euclidean space $\mathbb{R}^n$ instead of other inner product spaces. For example, many engineering applications measure similarity between vectors using the dot product after stretching the two vectors in some directions, with linear transformation $A$. Therefore, we can given a restricted definition of inner product that is meant to be used in $\mathbb{R}^n$.  


\BeginKnitrBlock{definition}\iffalse{-91-82-101-115-116-114-105-99-116-101-100-32-100-101-102-105-110-105-116-105-111-110-32-111-102-32-105-110-110-101-114-32-112-114-111-100-117-99-116-93-}\fi{}<div class="definition"><span class="definition" id="def:restricted-inner-product"><strong>(\#def:restricted-inner-product)  \iffalse (Restricted definition of inner product) \fi{} </strong></span>
The generalized dot product $\langle \bar{x}, \bar{y}\rangle$ in $\mathbb{R}^n$ between two vectors, is the dot product between $A\bar{x}$ and $A\bar{y}$, for some $n \times n$ non-singular matrix $A$. The inner product $\langle \bar{x}, \bar{y}\rangle$ can also be expressed using the Gram matrix $S = A^TA$

$$
\langle \bar{x}, \bar{y}\rangle = (A\bar{x})^T(A\bar{y}) = \bar{x}A^TA\bar{y} = \bar{x}^TS\bar{y}
$$</div>\EndKnitrBlock{definition}

It's easy to see that when $S$ is the identity matrix, the inner product is the dot product.  

This definition of inner product also induces consines and distances with respect to transformation $A$ 


$$
\cos_A{(\bar{x}, \bar{y})} = \frac{\langle \bar{x}, \bar{y}\rangle}{\sqrt{\langle \bar{x}, \bar{x}\rangle}\sqrt{\langle \bar{y}, \bar{y}\rangle}}
= \frac{\bar{x}S\bar{y}}{\sqrt{\bar{x}S\bar{x}}\sqrt{\bar{y}S\bar{y}}}
= \frac{(A\bar{x})^T(A\bar{y})}{\|A\bar{x}\|_2\|A\bar{y}\|_2} \\
\text{dist}(\bar{x}, \bar{y}) = \sqrt{\langle \bar{x} - \bar{y}, \bar{x} - \bar{y} \rangle}
= \sqrt{(\bar{x} - \bar{y})^TS(\bar{x} - \bar{y})}
= \|A\bar{x} - A\bar{y} \|_2
$$






## Subspaces

If $V$ is a subspace, then $S \subseteq A$ if 

1. $\bar{0} \in S$  

2. $S$ is closed under addition: if $\bar{x}, \bar{y} \in S$, then $\bar{x} + \bar{y} \in S$  

3. $S$ is closed under scalar multiplication if $\bar{x} \in S, \alpha \in \mathbb{R}$ then $\alpha\bar{x} \in S$

$V$ is always a subspace of itself. 

If $U$ and $W$ are all subspaces of $V$, then the sum of these two subspaces are defined as 

$$
U + W = \{\bar{u} + \bar{v} \;| \; \bar{w} \in U, \bar{w} \in W \}
$$

If $U$ and $W$ are perpendicular, in other words, $U \cap W = \bar{0}$. Then $U + W$ are said to be a **direct sum** and written $U \oplus W$. 

Dimensions of sums of subspaces has the following property 

$$
\text{dim}(U + W) = \text{dim}(U) + \text{dim}(W) - \text{dim}(U \cap W)
$$

It follows that if $U$ is perpendicular to $W$, $W$, 

$$
\text{dim}(U \oplus W) = \text{dim}(V)  = \text{dim}(U) + \text{dim}(W)
$$


## Fundamental theorem of linear algebra  {#fundamental-theorem}

The **columnspace** (also called *range*) of matrix $A \in \mathbb{R}^{m \times n}$ is the span of the columns of $A$

$$
\mathcal{R}(A) = \{\bar{v} \in \mathbb{R}^m\;|\; \bar{v} = A\bar{x}, \, \bar{x} \in \mathbb{R}^n\}
$$

Similarly, the **rowspace** of $A$ is the span of its rows $\mathcal{R}(A^T)$. 

The **nullspace** (also called *kernel*) of $A$ is the set of solutions to $A\bar{v} = \bar{0}$ 

$$
\mathcal{N}(A) = \{\bar{x} \in \mathbb{R}^n\;|\;A\bar{x} = \bar{0}\}
$$

And the left null space is all $\bar{x}$ that satisfies $A^T\bar{x} = \bar{0}$. The word "left" in this context stems from the fact that $A^T\bar{x}= \bar{0}$ is equivalent to $\bar{x}^TA=\bar{0}$ where y "acts" on A from the left.  

The relationship between these four subspaces present the fundamental theorem of linear algebra 


\BeginKnitrBlock{theorem}\iffalse{-91-84-104-101-32-102-117-110-100-97-109-101-110-116-97-108-32-116-104-101-111-114-101-109-32-111-102-32-76-105-110-101-97-114-32-65-108-103-101-98-114-97-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:fundamental-theorem"><strong>(\#thm:fundamental-theorem)  \iffalse (The fundamental theorem of Linear Algebra) \fi{} </strong></span>

- $\mathcal{R}(A) = \mathcal{N}(A^T)^{\perp}$, and $\dim(\mathcal{R}(A)) + \dim(\mathcal{N}(A^T)) = m$  

- $\mathcal{R}(A^T) = \mathcal{N}(A)^{\perp}$, and $\dim(\mathcal{R}(A^T)) + \dim(\mathcal{N}(A)) = n$</div>\EndKnitrBlock{theorem}


If the rank (defined next section) of $A \in \mathbb{R}^{m \times n}$ is $r$ 


- $m - r$ is the dimension of the left null space of $A$  

- $n - r$ is the dimension of the null space of $A$


## Rank 


The **rank** of a vector space is its dimension. 

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-2"><strong>(\#def:unnamed-chunk-2) </strong></span>The rank of a matrix is equal to the rank of its column space, which is the same as the rank of its column space. </div>\EndKnitrBlock{definition}

I often think of rank of $A$ as the total volume of information that the matrix can offer.   

From the definition of matrix rank, we know that $A$'s row rank (the dimension of $\mathcal{R}(A^T)$)equals its column rank $\mathcal{R}(A)$. A way to verify this are presented below.

All matrices can be reduced into a (possibly rectangular) *diagonal matrix* with elementary row and column operations. First we can row reduce the matrix into row echelon form, then use column operations to convert positions above the pivot to zero. 

Thus, any $A \in \mathbb{R}^{m \times n}$ can be expressed in the following form

$$
RAC = \Lambda \tag{1}
$$

where $R$ is the product of the elementary matrices that perform row opertations, and $C$ for column operations. Since $C$ is invertible, we can write 

$$
RA = \Lambda C^{-1} \tag{2}
$$

From (1) we know that row rank of $A$ is identical to that the number of non-zero entries in $\Lambda$, on the ground that row operations on $A$ does not change its row rank, and $C^{-1}$ only scale diagonal entries of $\Lambda$ to some multiple. Similarly, $AC = R^{-1}\Lambda$ shows that column rank of $A$ is the same as the number of non-zero diagonal entries in $\Lambda$. Therefore, row rank $=$ column rank. 

### Effect of operations on matrix rank  

Let $A, B \in \mathbb{R}^{m \times n}$ have ranks $a$ and $b$

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-3"><strong>(\#cor:unnamed-chunk-3) </strong></span>  

1. $|a - b| \le  r(A + B) \le a + b$  

2. $r(AB) < \min(a, b)$   </div>\EndKnitrBlock{corollary}



**PROOF**

For (1), rows / columns of $A + B$ can be expressed as linear combinations of rows / columns of $A$ and $B$. 

For (2), Each column of $AB$ is a linear combination of columns of A, and each row is a linear combination of rows of $B$. Therefore, $r(AB)$ can not exceed either rank of $A$ or $B$. There is also a corollary on the lower bound of $r(AB)$, which is $a + b - n$. Note that $n$ is the shared dimension. I have not found a concise proof about this, but this property leads to a interesting result: when one of $A$ and $B$ are square and full rank, $\min(r(AB)) = \max(r(AB))$


\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-4"><strong>(\#cor:unnamed-chunk-4) </strong></span>  

3. Multiplying $A$ with a square matrix $B$ of full rank does not change the rank of $A$.   

4. If $A$ and $B$ are both singular, then $AB$ is non-singular if and only if $A$ and $B$ are both non-singular </div>\EndKnitrBlock{corollary}



**PROOF**

Suppose $B$ is $n \times n$, the minimum rank of $AB$ is $a + n - n = a$, and the maximum rank is $\min(a, n) = a$. Thus, multiplying by a full rank matrix preserves rank: $r(AB) = r(A)$. (4) follows naturally after (3). 


### Gram matrix

\BeginKnitrBlock{proposition}\iffalse{-91-71-114-97-109-32-109-97-116-114-105-120-93-}\fi{}<div class="proposition"><span class="proposition" id="prp:gram-matrix"><strong>(\#prp:gram-matrix)  \iffalse (Gram matrix) \fi{} </strong></span>The matrix $A^TA$ is said to be the Gram matrix of column space of $A_{m \times n}$. The columns of $A$ are linearly independent if and only if $A^TA$ is invertible.</div>\EndKnitrBlock{proposition}

**PROOF**

When $A^TA$ is invertible, it has rank $n$. Therefore,  each of the factors of $A^TA$ has at least rank $n$, and this means columns of $A$ are linearly independent (since $r(A) \le \min(m, n)$). 

Similarly, $AA^T$ are called the left Gram matrix of rowspace of $A$. And $AA^T$ is invertible if and only rows of $A$ are linearly independent.

\BeginKnitrBlock{proposition}<div class="proposition"><span class="proposition" id="prp:gram-matrix-rank"><strong>(\#prp:gram-matrix-rank) </strong></span>For any matrix $A \in \mathbb{R}^{m \times n}$, $A$, $A^TA$ and $AA^T$ always have the same rank.

$$
r(A) = r(A^TA) = r(AA^T)
$$</div>\EndKnitrBlock{proposition}

**PROOF**

For $r(A) = r(A^TA)$, suppose $r(A) = r$, then $\dim(\mathcal{N}(A)) = n - \dim(\mathcal{R}(A^T)) = n - r$. Note that for any $\bar{x}$ that satisfies $A\bar{x} = 0$, we have $A^TA\bar{x} = 0$. It follows that $A$ and $A^TA$ have the same null space, $\mathcal{N}(A)  = \mathcal{N}(A^TA)$. Since $A^TA \in \mathbb{R}^{n \times n}$, we have $r(A^TA) = \dim(\mathcal{R}((A^TA)^T)) = n - \dim(\mathcal{N}(A^TA)) = r$. 

For $r(A) = R(AA^T)$, note that $r(A) = r(A^T)$,  and that $\mathcal{N}(A^T) = \mathcal{N}(AA^T)$, then the conclusion presents itself. 

<hr>

From the SVD perspective(Corollary \@ref(cor:same-nonzero) and Section \@ref(svd-theorem)), one can show that $A^TA$ and $AA^T$ have the same set of nonzero eigenvalues, and $r(A)$ is the same as the number of nonzero eigenvalues of $A^A$ or $AA^T$, so that $r(A) = r(A^TA) = r(AA^T)$.   

