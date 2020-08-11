# Singular value decomposition  

## Singular values of m x n matrix

The singular value decomposition illustrates a way of decomposing *any* matrix $A \in \mathbb{R}^{m \times n}$ into the form $U \Sigma V^T$, where $U = [\bar{u}_1 \;\; \cdots \;\; \bar{u}_n]$ and $V = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]$ are both orthogonal matrices, and $\Sigma$ a diagonal matrix with entries being the square root of the eigenvalues of $A^TA$ (perhaps plus some zeros).  

Before proceeding to the theorem, let's explore the motivating idea behind SVD. For (square) diagonalizable matrix $A \in \mathbb{S}^{n}$, the absolute value of the eigenvalues measure the amounts that $A$ stretches or shrinks eigenvectors, consider the ratio between the length of $\bar{x}$ before and after left multiplied by $A$ 

$$
\frac{\|A\bar{x}\|}{\|\bar{x}\|} 
= \frac{\|\lambda\bar{x}\|}{\|\bar{x}\|}
= \frac{\lambda\|\bar{x}\|}{\|\bar{x}\|} = \lambda
$$
If $\lambda_1$ is the greatest eigenvalue, then the corresponding eigenvector $\bar{v}_1$ identifies the direction in which $A$'s stretching effect is greatest. 

So, the question is, can we identify a similar ratio and direction for *rectangular* matrices $A \in \mathbb{R}^{m \times n}$, even though they does not have eigenvalues and eigenvectors?  

The answer is yes. Note that maximize $\frac{\|A\bar{x}\|}{\|\bar{x}\|}$ (now $\bar{x}$ is any vector $\in \mathbb{R}^n$) is equivalent to maximize $\frac{\|A\bar{x}\|^2}{\|\bar{x}\|^2}$ 

$$
\begin{split}
\frac{\|A\bar{x}\|^2}{\|\bar{x}\|^2} &= \frac{(A\bar{x})^T(A\bar{x})}{\bar{x}^T\bar{x}} \\
&= \frac{\bar{x}^T(A^TA)\bar{x}}{\bar{x}^T\bar{x}}
\end{split}
$$
Since $A^TA$ is **symmetric**, this is the form of a Rayleigh quotients \@ref(rayleigh-quotients)! We know that the largest possible value is of this quotient $\lambda_1$, the greatest eigenvalue of $A^TA$, with $\bar{x} = \bar{v}_1$, among the **orthonormal** set $\{\bar{v}_1, \cdots, \bar{v}_n\}$. Note that here $V = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]$ is already a orthogonal matrix, previously denoted by $Q$. 

To sum up, the greatest possible stretching ratio of $A \in \mathbb{R}^{m \times n}$ on a vector $\bar{x} \in \mathbb{R}^n$ is $\sqrt{\lambda_1}$. Generally, let $\{\bar{v}_1, \cdots, \bar{v}_n\}$ be a orthonormal basis for $\mathbb{R}^n$ consisting of eigenvectors of $A^TA$, and $\lambda_1, ..., \lambda_n$ be the eigenvalues of $A^TA$, for $i = 1, \cdots, n$

$$
\|A\bar{v}_i\| ^ 2 = \bar{v}_i^T(A^TA)\bar{v}_i = \lambda_i\bar{v}_i^T\bar{v}_i = \lambda_i
$$

From corollary \@ref(cor:ata-pd), we know that $A^TA$ are positive semidefinite matrices. Thus, $\lambda_i \ge 0, \, i = 1, ..., n$, and we can find their square root $\sigma_i = \sqrt{\lambda_i}$.

<br>  

\BeginKnitrBlock{definition}\iffalse{-91-83-105-110-103-117-108-97-114-32-118-97-108-117-101-115-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1)  \iffalse (Singular values) \fi{} </strong></span>The **singular values** of $A$ are the square roots of the eigenvalues of $A^TA$, denoted by $\sigma_1, ..., \sigma_n$. That is,  $\sigma_i = \sqrt{\lambda_i}$, and they are often arranged in descending order so that $\lambda_1 \ge \cdots \ge \lambda_n$. Geometrically, singular values of $A$ are the length of the vectors $A\bar{v}_1, ..., A\bar{v}_n$, where $\{\bar{v}_1, ..., \bar{v}_n\}$ is the *orthonormal* basis of $A^TA$'s eigenspace. </div>\EndKnitrBlock{definition}


<br>

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:svd-rank"><strong>(\#thm:svd-rank) </strong></span>Proceeding from previous definitons of singular values, and suppose $A$ has at least one nonzero singular values. Then $\{A\bar{v}_1, ..., A\bar{v}_r\}$ is an orthogonal basis for $\mathcal{R}(A)$, and $\text{rank} \;A = r$</div>\EndKnitrBlock{theorem}


**PROOF**  

First, let's examine that $\{A\bar{v}_1, ..., A\bar{v}_r\}$ is a orthogonal basis: any pair of two distinct vectors $A\bar{v}_i, A\bar{v}_j, \; i,j = 1, ..., r$ are orthogonal to each other 

$$
\begin{split}
(A\bar{v}_i)^T(A\bar{v}_j) &=  \bar{v}_i^TA^TA\bar{v}_j \\
&= \bar{v}_i^T(\lambda_j\bar{v}_j) \\
&= 0
\end{split}
$$

Next, we show that any vector in $\mathcal{R}(A)$ is a linear a combination of $\{A\bar{v}_1, ..., A\bar{v}_r\}$. Note that $\{\bar{v}_1, ..., \bar{v}_n\}$ is a orthonormal basis of $A^TA$'s eigenspace $\mathbb{R}^n$. Therefore,  for any vector $\bar{y} = A\bar{x}$ in $\mathcal{R}(A)$ , there exists $\bar{x} = c_1\bar{v}_1 + \cdots + c_n\bar{v}_n$, thus

$$
\begin{split}
\bar{y} &= A\bar{x} = A(c_1\bar{v}_1 + \cdots + c_n\bar{v}_n) \\
&= c_1 A \bar{v}_1 + \cdots + c_r A \bar{v}_r + c_{r+1} A \bar{v}_{r+1} + \cdots + c_n A \bar{v}_n 
\end{split}
\tag{1}
$$
Since $\lambda_{r+1} = \cdots = \lambda_{n} = 0$, $A\bar{v}_{r+1}, ..., A\bar{v}_{n}$ have length $0$: they are zero vectors. And (1) is reduced to 

$$
\bar{y} = c_1 A \bar{v}_1 + \cdots + c_r A\bar{v}_r
$$

Thus any $\bar{y} \in \mathcal{R}(A)$ is in Span$\{A\bar{v}_1, ..., A\bar{v}_r\}$, and $\{A\bar{v}_1, ..., A\bar{v}_r\}$ is an orthogonal basis for $\mathcal{R}(A)$. This also shows that the column rank of $A$ is equal to its number of nonzero singular values. 


## The singular value decomposition {#svd-theorem}

Let's begin SVD by the $m \times n$ diagonal matrix $\Sigma$ of the form 

$$
\Sigma = \begin{bmatrix}
\sigma_1 \\
& \ddots &  \\ 
& & \sigma_r \\
& & & 0 \\
& & & & \ddots \\
& & & & & 0 \\
\end{bmatrix}
\tag{1}
$$

There are $r$ nonzero entries on the diagonal, being $A$'s nonzero singular values, and the left positions are filled by $0$ to form a $m \times n$ matrix. If $r$ equals $m$ or $n$ or both, some or all of the zero blocks do not appear.  

\BeginKnitrBlock{theorem}\iffalse{-91-84-104-101-32-83-105-110-103-117-108-97-114-32-86-97-108-117-101-32-68-101-99-111-109-112-111-115-105-116-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:SVD"><strong>(\#thm:SVD)  \iffalse (The Singular Value Decomposition) \fi{} </strong></span>Let $A \in \mathbb{R}^{m \times n}$ with rank $r$. There exists an diagonal matrix $\mathbb{\Sigma} \in \mathbb{R}^{m \times n}$ as in (1) for which the first $r\ \times r$ block is a diagonal matrix with the first $r$ singular values of $A$ on its diagonal, and there exist $U \in \mathbb{R}^{m \times m}$ and $V \in \mathbb{R}^{n \times n}$ such that 

$$
A = U \Sigma V^T
$$</div>\EndKnitrBlock{theorem}

**PROOF** 

Since $A$ has $r$ nonzero singular values which measure the length of $A\bar{v}_i, \; i = 1, ...n$, there exists orthogonal basis $\{A\bar{v}_1, ..., A\bar{v}_r\}$ for $\mathcal{R}(A)$, we can further normalize the set to produce the *orthonormal* set $\bar{u}_1, ..., \bar{u}_r$: 

$$
\bar{u}_i = \frac{A\bar{v}_i}{\sigma_i}, \;\; i = 1, ..., r
$$
Now we can extend $\{\bar{u}_1, ..., \bar{u}_r\}$ to an orthonormal basis $\{\bar{u}_1, ..., \bar{u}_m\}$ of $\mathbb{R}^m$, and let 

$$
U = [\bar{u}_1 \;\; \cdots \;\; \bar{u}_m], \quad V = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]
$$

and $\Sigma$ be as be as in (1) above. Write out

$$
\begin{split}
U\Sigma &= [\bar{u}_1 \;\; \cdots \;\; \bar{u}_r \;\; \cdots \;\; \bar{u}_m]_{m \times m}
\begin{bmatrix}
\sigma_1 \\
& \ddots &  \\ 
& & \sigma_r \\
& & & 0 \\
& & & & \ddots \\
& & & & & 0 \\
\end{bmatrix}_{m\times n} \\
&= [\sigma_1\bar{u}_1 \;\; \cdots \;\;   \sigma_r\bar{u}_r \;\; \bar{0} \;\;  \cdots \;\;  \bar{0}] \\
& = [A\bar{v}_1 \;\; \cdots \;\; A\bar{v}_r \;\; A\bar{v}_{r+1} \;\; \cdots \;\; A \bar{v}_n] \\
&= A_{m \times n}V_{n \times n}
\end{split}
$$

And because $V$ is orthogonal 

$$
A = U \Sigma V^{-1} =  U \Sigma V^{T}
$$
$\bar{u}_i$ and $\bar{v}_i$ are called *left eigenvector* and right eigenvector of $A$ respectively. 

It's easy to verify that the spectral decomposition \@ref(spectral-decomposition) is a special case of SVD when $A \in \mathbb{R}^{n}, \;\; m = n$. In that case, $\Sigma$ is a square matrix and $U$ is equal to $V$. 

When $\Sigma$ contains rows or columns of zeros (i.e, $r < \min(m, n)$), we can write SVD in a more compact form. Divide $U, \Sigma, V$ into submatrices

$$
U = [U_r \;\; U_{m-r}], \quad \text{where } U_r = [\bar{u}_1 \;\; \cdots \;\; \bar{u}_r] \\
V = [V_r \;\; V_{m-r}], \quad \text{where } V_r = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_r] \\
\Sigma = 
\begin{bmatrix}
D & 0 \\
0 & 0
\end{bmatrix}
\quad \text{where } D = 
\begin{bmatrix}
\lambda_1 \\ 
 & \ddots \\
 & & \lambda_r
\end{bmatrix}
$$
The partitioned matrix multiplication shows that 

$$
A = [U_r \;\; U_{m-r}]
\begin{bmatrix}
D & 0 \\
0 & 0
\end{bmatrix}
\begin{bmatrix}
V_r^T \\
V_{n-r}^T
\end{bmatrix}
= U_rDV_{r}^T
$$
This more compact form is called a reduced **singular value decomposition**.  

Another way to write this is 

$$
A = \sum_{i=1}^{t}{\sigma_i}\bar{u}_i\bar{v}_i
$$

<hr> 

Right multiply the non-compact form $A = U\Sigma V^T$ by $A^T$  , we get the spectral decomposition of symmetric matrix $AA^T$.

$$
AA^T = (U \Sigma V^T)(U \Sigma V^T)^T = U \Sigma \Sigma^T VV^TU^T = U (\Sigma\Sigma^T) U^T       \tag{1}
$$

Therefore, $[\bar{u}_1 \;\; \cdots \;\; \bar{u}_n]$ are revealed as the orthonormal basis for $AA^T$'s eigenspace, as $[\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]$ are for $A^TA$.   

Formula (1) echoes the fact that $A^TA$ and $AA^T$ have the same set of nonzero eigenvalues, because $\Sigma\Sigma^T$ produces nonzero set $\lambda_1, ..., \lambda_r$.  

In fact, if were to ask for a direction in which $A^T$ has its greatest stretching effect instead of $A$, we would still result in the equivalent decomposition $A^T =  V\Sigma U^T$, with $\bar{v}_i = \frac{A\bar{u}_i}{\sigma_i}$. 

It's also easy to test that $\{A\bar{u}_1, ..., A\bar{u}_r\}$ produces an orthogonal basis for $\mathcal{R}(A^T)$ or $\mathcal{R}(A)$. The process is analogous to theorem \@ref(thm:svd-rank) where $\{A\bar{v}_1, ..., A\bar{v}_r\}$ are shown to span $\mathcal{R}(A)$. 

For any vector $\bar{y}$ in $\mathcal{R}(A)$, we have 

$$
\begin{align*}
\bar{y} &= A^T\bar{x} \\
&= A^T(c_1\bar{u}_1 + \cdots + c_1\bar{u}_n) \\
&= c_1A\bar{u}_1 + \cdots + c_rA\bar{u}_r + \bar{0} + \cdots + \bar{0} && (\text{because }A\bar{u}_i = \sigma_i\bar{v}_i)\\
&= c_1A\bar{u}_1 + \cdots + c_rA\bar{u}_r 
\end{align*}
$$

Thus, SVD can be thought of an connection between two spectral decomposition

$$
A^TA = V (\Sigma^T\Sigma)V^T  \\
AA^T = U (\Sigma\Sigma^T) U^T
$$


This shed light on the relationship between SVD and the fundamental theorem of linear algebra \@ref(thm:fundamental-theorem) 

|Subspace|Columns|
|:-:|:-:|
|$\mathcal{R}(A)$|the first $r$ columns of $U$|  
|$\mathcal{R}(A^T)$|the first $r$ columns of $V$| 
|$\mathcal{N}(A)$|the last $n - r$ columns of $V$|
|$\mathcal{N}(A^T)$|the last $m - r$ columns of $U$|







## Matrix norms 

Let $A$ and $B$ be matrices conformable for the operations below, a matrix norm should at first satisfy 3 axioms of norm: 

1. $\|A\| \ge 0$ for all $x \in X$, with equality if and only if all elements of $A$ is zero (nonnegative)  
2. $\|\alpha A\| = |\alpha|\,\|A\|$ (homogeneous)  
3. $\|A + B\| < \|A\| + \|B\|$ (triangular inequality)  

Additionally, in the case of square matrices (thus, m = n), some (but not all) matrix norms satisfy the following condition, which is related to the fact that matrices are more than just vectors  

4. $\|AB\| < \|A\|\,\|B\|$ for $A, B \in \mathbb{R}^{n \times n}$

A matrix norm that satisfies this additional property is called a **submultiplicative** norm.      

There are 2 main categories of matrix norms. 

- induced norms (defined in terms of vector norms)  
- entry-wise norms (treat $A_{m \times n}$ like a long vector with $m \times n$ elements)


### Induced norms

Induced norms define matrix norms in terms of vectors, also called *operator norm* since $A$ acts like an operator in this definition. Note that matrix $A \in \mathbb{R}^{m \times n}$ maps a vector $\bar{x} \not = 0$ from $\mathbb{R}^n$ to $\mathbb{R}^m$. In particular, if the p-norm is used for both $\mathbb{R}^n$ and $\mathbb{R}^m$, then the induced norm is 

$$
\|A\|_p = \max \frac{\|A\bar{x}\|_p}{\|\bar{x}\|_p}
$$
The subscript $p$ can be misleading, because the appropriate name for this matrix norm may not be "p-norm", but rather "induced norm when p-norm is used in both spaces". The p-norm of a matrix meaning usually means entry-wise p-norms or the Scatten p-norms defined in subsequent sections. 

In the special cases where $p = 1, 2, ..., \infty$, $\|A\|_p$ is the maximum absolute column sums, largest singular value, and the maximum absolute row sums

$$
\begin{aligned}
\|A\|_1 &= \max \sum_{i=1}^{m}{|A_{ij}|} \\
\|A\|_2 &= \sigma_1 \\
\|A\|_{\infty} &= \max \sum_{j=1}^{n}{|A_{ij}|}
\end{aligned}
$$
For symmetric matrix A, we have 

$$
\|A\|_1 = \|A\|_{\infty}
$$
and 

$$
\|A\|_2 = \lambda_1
$$
The induced 2-norm are also called the **spectral norm**. 



By definition, the following inequality holds for induced matrix norms 

$$
\|A\bar{x}\|_P \le \|A\|_p\|\bar{x}\|_p
$$


<hr> 

\BeginKnitrBlock{proposition}<div class="proposition"><span class="proposition" id="prp:unnamed-chunk-2"><strong>(\#prp:unnamed-chunk-2) </strong></span>Induced matrix norms satisfies the additional submultiplicative property in that 

$$
\|AB\|_p \le \|A\|_p\|B\|_p
$$</div>\EndKnitrBlock{proposition}

**PROOF**

For any $\bar{x} \in \mathbb{R}^n$ 

$$
\|AB\bar{x}\|_p \le \|A\|_p\|B\bar{x}\|_p \le \|A\|_p\|B\|_p\|\bar{x}\|_p
$$
si 

$$
\|AB\|_p = \max \frac{\|A\bar{x}\|_p}{\|\bar{x}\|_p} \le \max \frac{\|A\|_p\|B\|_p\|\bar{x}\|_p}{\|\bar{x}\|_p} = \|A\|_p\|B\|_p
$$



### Entry-wise norm

Entry-wise norms treat an $m \times n$ matrix as a long vector of size $m \times n$, denoted by $\text{vec}(A)$. For example, using the p-norm for vectors, we get 

$$
\|A\|_{p,p} = \|\text{vec}(A)\|_p = \Bigg(\sum_{j=1}^n\sum_{i=1}^{m}{|A_{ij}|}^p \Bigg)^{\frac{1}{p}}
$$

More generally, the p,q norm is defined by 

$$
\|A\|_{p, q} = \Bigg (  \sum_{j=1}^n \Big (\sum_{i=1}^{n}{|A_{ij|}}^p \Big)^{\frac{q}{p}}    \Bigg)^{\frac{1}{q}}
$$
Another important member norm of this norm family is the **Frobenius norm**, or the F-norm.

$$
\| A\|_F = \sqrt{\sum_{j=1}^n\sum_{j=1}^{m}{A_{ij}^2}} = \sqrt{\text{tr}(A^TA)} = \sqrt{\sum_{i=1}^{\min(m,n)}{\sigma_i^2}}  
$$
where $\sigma_i$ is the nonzero singular value of $A$.  


\BeginKnitrBlock{proposition}<div class="proposition"><span class="proposition" id="prp:unnamed-chunk-3"><strong>(\#prp:unnamed-chunk-3) </strong></span>The F-norm is a submultiplicative norm. </div>\EndKnitrBlock{proposition}

**PROOF**

Let $A$ and $B$ are of appropriate size such that

$$
A = 
\begin{bmatrix}
a_1^T \\
\vdots \\
a_m^T
\end{bmatrix}
, \;
B = 
\begin{bmatrix}
b_1 & \cdots & b_m
\end{bmatrix} 
\\
\quad \\
\begin{aligned}
\|AB\| &= \sqrt{\sum_{i, j}{|a_i^Tb_j|^2}} \\
& \le \sqrt{\sum_{i, j}{\| a_i \|^2 \| b_j\|^2}} \\
&= \sqrt{\sum_{i}{\|a_i\|^2}} \sqrt{\sum_{j}{\|b_j\|^2}} \\
&= \|A\| \|B\|
\end{aligned}
$$

The first inequality comes from the Cauchy-Schwarz inequality $a \cdot b \le \|a\| \|b\|$

### Other matrix norms 

One can pick to one of two ways to generalize the F-norm. One is a generalization of the direct definition that F-norm is the 2-norm of $||\text{vec}()||$. For $p \ge 1$,  it is the **Frobenius-p** norm:  

$$
\| A \|_{F_p} = \Bigg (\sum_{i,j}{|A_{ij}|^p} \Bigg)^{\frac{1}{p}}
$$
The Frobenius p-norm is the ordinary Frobenius norm. 

Another generalization stems from the relationship between F-norm and singular values of $A$. The **Schatten p norm** or **nuclear p-norm** is the p-norm of the vector composed of $A$'s singular values

$$
\|A\|_{S_p} = \Big( \sum_{i = 1}^{\min(m, n)}{\sigma_i^p}\Big)^{\frac{1}{p}}
$$

### Unitary invariancy




\BeginKnitrBlock{definition}\iffalse{-91-117-110-105-116-97-114-121-32-105-110-118-97-114-105-97-110-116-93-}\fi{}<div class="definition"><span class="definition" id="def:unitary-invariant"><strong>(\#def:unitary-invariant)  \iffalse (unitary invariant) \fi{} </strong></span>A matrix norm $\|\cdot \|$ is said to be unitary invariant if for all orthogonal matrices $U$ and $V$ of appropriate size

$$
\|A\| = \|UAV\|
$$</div>\EndKnitrBlock{definition}

(unitary matrices refers to orthogonal matrices with complex-valued entries, but I focus on real matrices here.)

Essentially, if a norm depends only on the singular values of a matrix, it is unitary invariant. Since for such norms: 

$$
\|A\| = \|\Sigma\|
$$
Multiply two orthogonal matrices $U$ and $V^T$ on each side,  

$$
\begin{aligned}
\|UA V^T\| & = \| U \Sigma V^T\| \\
\|UAV^T\| &= \|A\|
\end{aligned}
$$

\BeginKnitrBlock{todo}<div class="todo">Does this work for all orthogonal matrices $U$ and $V$?</div>\EndKnitrBlock{todo}

The spectral norm (induced p-norm), F-norm and Schattan norm are all unitary invariant. 

## Low rank approximation 

