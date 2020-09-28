
# Eigenthings and Quadratic Forms


## Eigenvectors and Eigenvalues  

\BeginKnitrBlock{definition}\iffalse{-91-69-105-103-101-110-118-101-99-116-111-114-115-32-97-110-100-32-101-105-103-101-110-118-97-108-117-101-115-93-}\fi{}<div class="definition"><span class="definition" id="def:eigen"><strong>(\#def:eigen)  \iffalse (Eigenvectors and eigenvalues) \fi{} </strong></span>An **eigenvector** of an $n \times n$ matrix $A$ is a *nonzero* vector $\bar{x}$ such that $A\bar{x} = \lambda\bar{x}$. 

$\lambda$ is the **eigenvalue** of $A$ if there is a nontrivial solution $\bar{x}$ of $A\bar{x} = \lambda \bar{x}$; such an $\bar{x}$ is called an *eigenvector corresponding to $\lambda$*</div>\EndKnitrBlock{definition}

To find eigenvalues and corresponding eigenvectors of $A$, we look at the equation 

$$
(A - \lambda I)\bar{x}= 0
$$

Since eigenvector $\bar{x}$ must be nonzero, $(A - \lambda I)$ is a singular matrix 


\begin{equation}
(\#eq:characteristic-equation)
\det (A - \lambda I) = 0
\end{equation}

Eq \@ref(eq:characteristic-equation) is called the **characteristic equation** of matrix $A$. This is a scalar equation containing information about eigenvalues and eigenvectors of a square matrix $A$. 



\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>Eigenvalues of a trangular matrix are its diagonal entries.</div>\EndKnitrBlock{theorem}


<div class = "proof"> Proof </div>  

Consider the $3 \times 3$ case. If $A$ is upper triangular, then $A - \lambda I$ has the form 

$$
\begin{bmatrix}
a_{11} - \lambda & a_{12} & a_{13} \\
0 & a_{22} - \lambda & a_{23}  \\
0 & 0 & a_{33} - \lambda
\end{bmatrix}
$$
So the roots of characteristic are $a_{11}, a_{22}, a_{33}$ respectively. 

There are some useful results about how eigenvalues change after various manipulations. 

1. For any $k, b \in \mathbb{R}$, $\bar{x}$ is an eigenvector of $kA + bI$ with eigenvalue $k\lambda + b$  

2. If $A$ is invertible, then $\bar{x}$ is an eigenvector of $A^{-1}$ with eigenvalue $1/\lambda$ 

3. $A^{k}\bar{x} = \lambda^{k}\bar{x}$ 

<div class = "proof"> Proof </div>

For (1)
$$
(kA + bI)\bar{x} = kA\bar{x} + bI\bar{x} = k \lambda\bar{x} + b\bar{x} = (k\lambda + b)\bar{x} 
$$

For(2)


$$
\bar{x} = A^{-1}A\bar{x} =  A^{-1}\lambda \bar{x} = \lambda A^{-1}\bar{x}
$$



The next theorem is important in terms of diagonalization and spectral decomposition

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:distinct-eigenvalue"><strong>(\#thm:distinct-eigenvalue) </strong></span>For distinct eigenvalues $\lambda_1, \cdots, \lambda_r$ of an $n \times n$ matrix A, their corresponding eigenvectors $\bar{v_1}, ..., \bar{v_r}$ are linearly independent. </div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>  

Suppose for r distinct eigenvalue  $\lambda_1, \cdots, \lambda_r$, the set $\{\bar{v_1}, ..., \bar{v_r}\}$ is not linearly independent, and $p$ is the least index such that $\bar{v}_{p+1}$ is a linear combination of the preceding vectors. Then there exists scalars $c_1, \cdots, c_p$ such that

$$
c_1\bar{v}_1 + \cdots + c_p\bar{v}_p = \bar{v}_{p+1} \tag{1}
$$
Left multiply by $A$, and note we have $A\bar{v}_i = \lambda_i\bar{v}_i$ for $i = 1, ..., n$ 

$$
c_1\lambda_1\bar{v}_1 + \cdots + c_p\lambda_p\bar{v}_p = \lambda_{p+1}\bar{v}_{p+1} \tag{2}
$$
Multiplying both sides of (2) by $\lambda_{p+1}$ and subtracting (2) from the result 

$$
c_1(\lambda_1 - \lambda_{p+1})\bar{v}_1 +\cdots + c_p(\lambda_p - \lambda_{p+1})\bar{v}_p = 0 \tag{3}
$$
Since $\bar{v}_1, ..., \bar{v}_p$ are linearly independent,  weights in (3) must be all zero. Since $\lambda_1, \cdots, \lambda_p$ are distinct, hence $c_i = 0, \, i = 1, ..., p$. But then (5) says that eigenvector $\bar{v}_{p+1}$ is zero vector, which contradicts definition \@ref(def:eigen)   

<hr>

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:same-nonzero"><strong>(\#cor:same-nonzero) </strong></span>Let $A \in \mathbb{R}^{m \times n}$ $A^TA$ and $AA^T$ has the same set of *nonzero* eigenvalues. </div>\EndKnitrBlock{corollary}

<div class = "proof"> Proof </div> 

Let $\lambda$ be a nonzero eigenvalue of $A^TA$ and $\bar{x}$ its eigenvector 

$$
\begin{split}
(A^TA)\bar{x} &= \lambda\bar{x} \\
\end{split}
$$
Left multiply by $A$ 

$$
AA^T(A\bar{x}) = \lambda (A\bar{x})
$$
We will have to verify that $A\bar{x}$ is no zero vector before concluding $\lambda$ is also an eigenvector of $AA^T$. Suppose $A\bar{x} = 0$, then $A^TA\bar{x} =\lambda\bar{x} = 0$. Since $\bar{x}$ is a eigenvector which is nonzero, $\lambda = 0$, which contradicts our former statement. Thus, any nonzero eigenvalue of $A^TA$ is also an eigenvalue of $AA^T$. 

$A^TA$ and $AA^T$ are known as Gram matrix and left Gram matrix in corollary \@ref(prp:gram-matrix)

### Additional Properties of Eigenvalues and Eigenvectors  

Let $A \in \mathbb{R}^{n \times n}$ with eigenvalues $\lambda_1, ..., \lambda_n$. Here are some additional properties of this matrix and its eigenvalues: 

- The trace of $A$ is the sum of all eigenvalues

$$
\text{tr}(A) = \sum_{i=1}^{n}{\lambda_i}
$$

- The determinant of $A$ is the product of all its eigenvalues.  

$$
\det(A) = \prod_{i=1}^{n}{\lambda_i}
$$

- The eigenvalues of $k$th power of $A$, i.e. $A^k$, is $\lambda_1^k, ..., \lambda_n^k$  

- If $A$ is invertible, then eigenvalues of $A^{-1}$ are $\frac{1}{\lambda_1}, ..., \frac{1}{\lambda_n}$  

- For a polynomial function $P$ the eigenvalues of $P(A)$ are $P(\lambda_1), ..., P(\lambda_n)$


### Left Eigenvectors and Right Eigenvectors 

$$
\bar{x}A = \lambda\bar{x}
$$






## Diagnolization and Similar Matrices 

\BeginKnitrBlock{definition}\iffalse{-91-68-105-97-103-111-110-97-108-105-122-97-116-105-111-110-32-116-104-111-101-114-101-109-93-}\fi{}<div class="definition"><span class="definition" id="def:diagonalization"><strong>(\#def:diagonalization)  \iffalse (Diagonalization thoerem) \fi{} </strong></span>An $n \times n$ matrix $A$ is diagnolizable **if and only if** A has $n$ independent linearly independent eigenvectors. 

In such case, in $A = P \Lambda P^{-1}$, the diagonal entries of $D$ are eigenvalues that correpond, respectively, to the eigenvectors of in $P$  
  
In other words, $A$ is diagnolizable if and only if there are enough eigenvectors in form a basis of $R^n$, called an **eigenvector basis** of $R^n$ </div>\EndKnitrBlock{definition}

<div class = "proof"> Proof </div> 

$$
\begin{split}
AP &= A[\bar{v}_1 \cdots \bar{v}_n] \\
   &= [A\bar{v}_1 \cdots A\bar{v}_n] \\ 
   &= [\lambda_1\bar{v}_1 \cdots \lambda_n\bar{v}_n]
\end{split}
$$
while on the other side of the equation:  

$$
\begin{aligned}
DP &= 
[\bar{v}_1 \cdots \bar{v}_n]
\begin{bmatrix}
\lambda_1 & 0 & \cdots & 0\\
0  & \lambda_2 & \cdots & 0 \\
\vdots & \vdots & & \vdots \\
0 & 0 & \cdots & \lambda_n 
\end{bmatrix} 
 \\
&= [\lambda_1\bar{v}_1 \cdots \lambda_n\bar{v}_n]
\end{aligned}
$$

So that 

$$
\begin{aligned}
AP &= PD \\
A &= P \Lambda P^{-1}
\end{aligned}
$$
Because $P$ contains $n$ independent columns so it's invertible.  

According to theorem \@ref(thm:distinct-eigenvalue), an $n \times n$ matrix with $n$ distinct eigenvalues is diagonalizable. This is a sufficient condition. 

For matrices whose eigenvalues are not distinct, there is still a change that it is diagonalizable. For any matrix $A_{n\times n}$, as long as the sum of the dimensions of the eigenspaces equals $n$ then $P$ is invertible. This could happen in the following two scenarios

1. The characteristic polynomial factors completely into linear factors. This is the case when $A$ has n distinct eigenvalues. 

2. The dimension of the eigenspace for each $\lambda_k$ equals the multiplicity of $\lambda_k$. Thus $A$ with repeated eigenvalues can still be diagonalizable.  
Repeated eigenvalues create the possibility that a diagonalization might not exist. Particularly, if less than $r_i$ eigenvectors exist for an eigenvalue with multiplicity $r_i$, a diagonalization does not exist. Such a matrix is said to be **deflective**.


### Similarity

If $A$ and $B$ are both $n \times n$ matrices, then $A$ **is similar to** $B$ if there is an invertible matrix $P$ such that $P^{-1}AP = B$, or equivalently if we write $Q$ for $P^{-1}$, $Q^{-1}BQ = A$. Changing $A$ into $P^{-1}AP$ is called a **similarity transformation**.  




\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>If $A$ and $B$ are similar, they have the same eigenvalues. </div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>  
If $B = P^{-1}AP$, then 

$$
B - \lambda I = P^{-1}AP - \lambda P^{-1}P = P^{-1}(AP - \lambda P) =  P^{-1}(A - \lambda I) P
$$
so that 

$$
\det (B - \lambda I ) = \det(P) \cdot \det(A - \lambda I ) \cdot \det(P^{-1})
$$
since $\det(P) \cdot \det(P^{-1}) = \det (I) = 1$, we have 

$$
\det (B - \lambda I)  = \det(A - \lambda I)
$$

As a result of their identical characteristic polynomial, $B$ and $A$ have the same eigenvalues. We can also show that eigenvector of $B$ is $P\bar{v}$:

$$
\begin{aligned}
A\bar{v} &= \lambda\bar{v} \\
(P^{-1}BP)\bar{v} &= \lambda\bar{v} \\
P(P^{-1}BP)\bar{v} &= \lambda P\bar{v} \\
B(P\bar{v}) = \lambda P \bar{v}
\end{aligned}
$$



The similarity theorem leads to a interesting result. 

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-3"><strong>(\#cor:unnamed-chunk-3) </strong></span>For $A, B \in \mathbb{R}^{n \times n}$, $AB$ and $BA$ are similar matrices and therefore share the same set of eigenvalues.  </div>\EndKnitrBlock{corollary}

To prove this, we need to show that there exists a invertible matrix $A$ such that $P^{-1}(AB)P = BA$. Take $P = A$ and the equation holds.  

It is easy to show that similarity is **transitive**: if $A$ is similar to $B$, $B$ is similar to $C$, then $A$ is similar to $C$. So similarity means a family of matrices with the same set of eigenvalues, the most special and simplest of which is the diagonal matrix (if this is an diagonalizable family). Some computer algorithms calculate eigenvalues of $A$ in this manner: with a sequential choices of $P$, the off-diagonal elements of $A$ become smaller and smaller until $A$ becomes a triangular matrix or diagonal matrix, whose eigenvalues are simply diagonal entries and is the same as $A$.


It is obvious that a diagonalizable matrix $A$ is similar to diagonal matrix $D$, whose diagonal entries are $A$'s eigenvalues $\lambda_i$, and $P = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]^{-1}$ where $\bar{v}_i, \;i = 1,..., n$ are eigenvectors corresponding to $\lambda_i$. 

But square matrix $A$ can still be similar to matrices other than $D$ with other choices of $P$, and non-diagonal matrices can also have similar matrices of their own. In fact, **every square matrix is similar to a matrix in Jordan matrix** \@ref(jordan-matrix). 


<hr>

Similarity is only a *sufficient* condition for identical eigenvalues. The matrices 

$$
\begin{bmatrix}
2 & 1 \\
0 & 2 
\end{bmatrix}
\;\text{and}\;
\begin{bmatrix}
2 & 0 \\
0 & 2 
\end{bmatrix}
$$
are not similar even though they have the same eigenvalues. 


### Jordan Matrix

For non-diagonalizable square matrix $A_{n \times n}$, the goal is to with similar transformation $P^{-1}AP$ construct a matrix that is as near to a diagonal matrix as possible.  


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-4"><strong>(\#def:unnamed-chunk-4) </strong></span>The $n \times n$ matrix $J_{\lambda, n}$ with $\lambda$s on the diagonal, $1$s on the superdiagonal and $0$s elsewhere is called a Jordan matrix. A Jordan matrix in Jordan normal form is a block matrix that has Jordan blocks down its block diagonal and is zero elsewhere</div>\EndKnitrBlock{definition}

An example of Jordan matrix, the appearance of $\lambda_i$ on the diagonal is equal to its multiplicity as $A$'s eigenvalue. 
$$
\begin{bmatrix}
\lambda_1 & 1  & \\
& \lambda_1 & 1 & \\
& & \lambda_1 & \\ 
& & & \lambda_2 & 1 \\
& & & & \lambda_2  \\ 
& & & & & \lambda_3 & 1  \\ 
& & & & & & \ddots \\
& & & & & & & \lambda_n & 1 \\
& & & & & & & & \lambda_n
\end{bmatrix}
$$
An illustration from [wikipedia](https://en.wikipedia.org/wiki/Jordan_normal_form), the circled area is the Jordan block. 
<img src="images/jordan-blocks.png" width="40%" style="display: block; margin: auto;" />

Though the purpose of this section was not the computation details of Jordan matrices, it helps to give a concrete example. Consider $A$

$$
A = 
\begin{bmatrix}
5 & 4 & 2 & 1 \\
0 & 1 & -1 & -1 \\
-1 & -1 & 3 & 0 \\
1 & 1 & -1 & 2
\end{bmatrix}
$$

Including multiplicity, the eigenvalues of $A$ are $\lambda = 1, 2, 4, 4$. And for $\lambda = 4$, the eigenspace is 1 dimensional instead of 2, meaning $A$ is not diagonalizable. Nonetheless, $A$ is similar to the following Jordan matrix 

$$
J = 
\begin{bmatrix}
1 & 0 & 0 & 0\\
0 & 2 & 0 & 0\\
0 & 0 & 4 & 1\\
0 & 0 & 0 & 4
\end{bmatrix}
$$

To obtain $P$, recall that $P^{-1}AP = J$. Let $P$ have column vectors $p_i, \; i = 1,...,4$, then:

$$
A[\bar{p}_1 \; \; \bar{p}_2 \;\; \bar{p}_3 \;\; \bar{p}_4] = [\bar{p}_1 \; \; \bar{p}_2 \;\; \bar{p}_3 \;\; \bar{p}_4]
\begin{bmatrix}
1 & 0 & 0 & 0\\
0 & 2 & 0 & 0\\
0 & 0 & 4 & 1\\
0 & 0 & 0 & 4
\end{bmatrix}
= [\bar{p}_1 \;\; 2\bar{p}_2 \;\; 4\bar{p}_3 \;\; \bar{p}_3 + 4\bar{p}_4]
$$

We see that 

$$
\begin{aligned}
(A - 1I)\bar{p}_1 &= \bar{0} \\
(A - 2I)\bar{p}_2 &= \bar{0} \\
(A - 4I)\bar{p}_3 &= \bar{0} \\
(A - 1I)\bar{p}_4 &= \bar{p}_3 
\end{aligned}
$$
The solutions $\bar{p}_i$ are called **generalized eigenvectors** of $A$.  


### Simultaneous Diagonalization     

A diagonlizable matrix family that share the **same eigenvectors** is called *simultaneously diagonalizable*. This notion is complimentary to a family of similar matrices that are diagonalizable, share eigenvalues but not eigenvectors. 

\BeginKnitrBlock{definition}\iffalse{-91-83-105-109-117-108-116-97-110-101-111-117-115-108-121-32-100-105-97-103-111-110-97-108-105-122-97-98-108-101-93-}\fi{}<div class="definition"><span class="definition" id="def:simultaneous-diagonalizable"><strong>(\#def:simultaneous-diagonalizable)  \iffalse (Simultaneously diagonalizable) \fi{} </strong></span>Two diagonalizable matrices $A$ and $B$ are said to be *simultaneously diagonalizable* if a $n \times n$ matrix $P$ exists, such that $P^{-1}AP$ and $P^{-1}BP$ are diagonal matrices. In other words 

$$
A =  P\Lambda_1P^{-1} \\
B = P\Lambda_2P^{-1}
$$</div>\EndKnitrBlock{definition}


The geometric interpretation of simultaneously diagonalizable matrices is that they perform scaling in the same set of directions. 


<hr>

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-6"><strong>(\#thm:unnamed-chunk-6) </strong></span>If $A$ and $B$ are diagonalizable matrices, they are simultaneously diagonalizable if and only if they commute, such that $AB$ = $BA$. </div>\EndKnitrBlock{theorem}


This theorem is useful in identifying diagonalizable matrices with the same eigenvectors. 



For example, the matrices 

$$
\begin{bmatrix}
1 & 0 \\
0 & 0
\end{bmatrix}
\quad 
\text{and}
\quad
\begin{bmatrix}
1 & 1 \\
0 & 0
\end{bmatrix}
$$
are not simultaneously diagonalizable because they do not commute. 

### Cayley-Hamilton Theorem  

For any square matrix $A_{n \times n}$, the characteristic polynomial of $\lambda$ is defined as 

$$
\det(A - \lambda I)
$$

We can obtain a polynomial of matrix $A$ by substituting $A$ for $\lambda$, and $kI$ for constant terms. For example, the matrix form of the polynomial $3\lambda^2 + 2\lambda + 2$ is $3A^2 + 2A + 2I$. 

\BeginKnitrBlock{theorem}\iffalse{-91-67-97-121-108-101-121-45-72-97-109-105-108-116-111-110-32-84-104-101-111-114-101-109-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:cayley-hamilton"><strong>(\#thm:cayley-hamilton)  \iffalse (Cayley-Hamilton Theorem) \fi{} </strong></span>

Let $f(\lambda)$ be the polynomial function of the characteristic polynomial $\det(A - \lambda I)$, where $A$ is a square matrix. Then $f(A)$ evaluates to a zero matrix.</div>\EndKnitrBlock{theorem}


<div class = "proof"> Proof </div>  

Though the Caley Hamilton theorem \@ref(thm:cayley-hamilton) applies to any square matrix $A$. Our proof only address the case for diagonalizable matrices.  

When $A$ is diagonalizable, the polynomial of $A$ takes the form

$$
f(A) = Pf(\Lambda)P^{-1}
$$
Since $f(\lambda) = \det(A - \lambda I)$, and the diagonal entries of $\Lambda$ are the eigenvalues of $A$. Evaluate $f(\lambda)$ at each diagonal entry of $\Lambda$ will be zero. Thus $f(A)$ is a zero matrix.  

A direct result derived from the Cayley Hamilton theorem is that for every invertible matrix $A$, its inverse $A^{-1}$ can be represented as a polynomial of $A$ with degree $d - 1$.  

<r>

\BeginKnitrBlock{proposition}\iffalse{-91-80-111-108-121-110-111-109-105-97-108-32-114-101-112-114-101-115-101-110-116-97-116-105-111-110-32-111-102-32-109-97-116-114-105-120-32-105-110-118-101-114-115-101-93-}\fi{}<div class="proposition"><span class="proposition" id="prp:unnamed-chunk-7"><strong>(\#prp:unnamed-chunk-7)  \iffalse (Polynomial representation of matrix inverse) \fi{} </strong></span>The *inverse* of an invertible square matrix $A$ is a polynomial of $A$ with degree at most $d -1$. </div>\EndKnitrBlock{proposition}

Since the constant term in the characteristic polynomial is the product of eigenvalues, which is nonzero for non-singular matrices. If the product of all eigenvalues is $k$, we can write the Cayley-Hamilton matrix polynomial $f(A)$ in the form $f(A) = A \cdot g(A) + kI$, where $A \cdot g(A)$ is obtained by factoring out $A$ from the d-degree matrix polynomial, leaving $g(A)$ with degree of $d - 1$. Since $f(A)$ evaluates to zero, we have 

$$
A \underbrace{\Big( - g(A) / k\Big)}_{A^{-1}} = I
$$
Therefore, $A^{-1}$ is shown to be a polynomial of $A$. 


## Symmetric Matrices 

A *square* matrix $A \in \mathbb{R}^{n \times n}$ is *symmetric* if $A = A^{T}$, and *anti-symmetric* if $A = - A^{T}$. 

It can be shown that for any $A \in \mathbb{R}^{n \times n}$, $A + A^T$ is symmetric and $A - A^T$ anti-symmetric. So any square matrix $A$ can be wrote as a sum of a symmetric matrix and an anti-symmetric matrix 

$$
A = \frac{1}{2}(A + A^T) + \frac{1}{2}(A - A^T)
$$

It is common to denote the set of all symmetric matrices of size $n$ as $\mathbb{S}^n$, and $A \in \mathbb{S}^n$ means $A$ is a symmetric $n \times n$ matrix. 


Symmetric matrices have some nice properties about diagonalization.  

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-8"><strong>(\#thm:unnamed-chunk-8) </strong></span>If $A$ is symmetric, eigenvectors from distinct eigenvalues are **orthogonal**. </div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div> 

Let $\bar{v}_1$ and $\bar{v}_2$ be eigenvectors that correspond to distinct eigenvalues $\lambda_1$ and $\lambda_2$. Compute 

$$
\begin{split}
\lambda_1\bar{v}_1 \cdot \bar{v}_2 &= (\lambda_1\bar{v}_1)^T\bar{v}_2 \\
&= (\bar{v}_1^TA^T)\bar{v}_2 \\
&= \bar{v}_1^T(A\bar{v}_2) \\
&= \bar{v}_1^T(\lambda_2\bar{v}_2) \\
&= \lambda_2\bar{v}_1 \cdot \bar{v}_2
\end{split}
$$
because $\lambda_1 \not = \lambda_2$, $\bar{v}_1 \cdot \bar{v}_2 = 0$.

For symmetric matrices $A \in \mathbb{R}^{n \times n}$ without $n$ distinct eigenvalues, it turns out that the dimension of the eigenspace for each $\lambda_k$ always equals the multiplicity of $\lambda_k$. For this reason, if $A$ is a symmetric matrix we can always construct a orthonormal set $\{\bar{q}_1 \;\; \cdots \;\; \bar{q}_n\}$ from $\{\bar{v}_1 \;\; \cdots \;\; \bar{v}_n\}$ such that  

$$
Q^{T} = 
\begin{bmatrix}
\bar{q}_1^T \\
\vdots \\ 
\bar{q}_n^T
\end{bmatrix}
= Q^{-1}
$$
Recall that matrix $A$ with $n$ linearly independent eigenvectors is diagonalizable and can be written as 

$$
A = P \Lambda P^{-1}
$$
where $P = [\bar{v}_1 \;\; \cdots \;\; \bar{v}_n]$ and $\Lambda$ is a diagonal matrix with eigenvalues on its diagonal entries. 

With symmetric matrices, $\{\bar{v}_1, \cdots, \bar{v}_n\}$ must be linearly independent and can be transformed into a orthonormal basis $\{\bar{q}_1, \cdots, \bar{q}_n\}$. With orthogonal matrix $Q =[\bar{q}_1 \;\; \cdots \;\; \bar{q}_n]$, we have

\begin{equation}
(\#eq:orthogonal-diagonalization)
A = Q \Lambda Q^{T}
\end{equation}

Such matrix $A$ is said to be **orthogonally diagonalizable**. 

We have seen that for symmetric matrix $A$, Eq \@ref(eq:orthogonal-diagonalization) always holds. We can also also verify that if $A$ is orthogonally diagonalizable then it is a symmetric matrix

$$
A^T = (Q \Lambda Q^{T})^T = (Q^T)^T\Lambda^TQ^T= Q \Lambda Q^{T}  = A
$$

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-9"><strong>(\#thm:unnamed-chunk-9) </strong></span>An $n \times n$ matrix $A$ is orthogonally diagonalizable if an only if $A$ is a symmetric matrix. </div>\EndKnitrBlock{theorem}

### Spectral Decomposition 

For orthogonally diagonalizable matrix $A$, we have 

$$
A = Q \Lambda Q^{T} = [\bar{q}_1 \;\; \cdots \;\; \bar{q}_n] 
\begin{bmatrix}
\lambda_1 & & \\
 & \ddots \\
 & & \lambda_n
\end{bmatrix}
\begin{bmatrix}
\bar{q}_1^T \\
\vdots \\
\bar{q}_n
\end{bmatrix}
$$

It follows that 

\begin{equation}
(\#eq:spectral-decomposition)
A = \lambda_1\bar{q}_1\bar{q}_1^T + \cdots + \lambda_1\bar{q}_n\bar{q}_n^T
\end{equation}

Eq \@ref(eq:spectral-decomposition) is called the **spectral decomposition**, breaking $A$ into pieces of rank 1 matrix. It got this name because he set of eigenvalues of a matrix $A$ is sometimes called its *spectrum*.  

### A-Orthogonality  

\BeginKnitrBlock{definition}\iffalse{-91-65-45-79-114-116-104-111-103-111-110-97-108-105-116-121-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-10"><strong>(\#def:unnamed-chunk-10)  \iffalse (A-Orthogonality) \fi{} </strong></span>Column vector $\bar{v}_i$ and $\bar{v}_j$ are said to be *A-orthogonal* if $\bar{v}_i^TA\bar{v}_j = 0$ for some $n \times n$ invertible matrix $A$.</div>\EndKnitrBlock{definition}

Similarly, a set of column vectors $\bar{v}_1, ..., \bar{v}_n$ is A-orthogonal, if and only if $\bar{v}_i^TA\bar{v}_i = 0$ for each pair of vectors. 


## Quadratic Forms 

\BeginKnitrBlock{definition}\iffalse{-91-81-117-97-100-114-97-116-105-99-32-102-111-114-109-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-11"><strong>(\#def:unnamed-chunk-11)  \iffalse (Quadratic form) \fi{} </strong></span>A **quadratic form** on $\mathbb{R}^n$ is a function $Q$ defined on $\mathbb{R}^n$ whose value at a vector $\bar{x}$ in $\mathbb{R}^n$ can be computed by an expression of the form $Q(\bar{x}) = \bar{x}^TA\bar{x}$, where $A \in \mathbb{R}^{n \times n}$ is a **symmetric** matrix. $A$ is called the matrix of the quadraticc form. </div>\EndKnitrBlock{definition}

There exists a one-to-one mapping between symmetric matrix $A$ and the quadratic form. Consider the $3 \times 3$ case: 

$$
\bar{x} =
\begin{bmatrix}
x_1 \\
x_3 \\
x_3 \\
\end{bmatrix}
, \;\; A = 
\begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} 
\end{bmatrix} \\
$$

$$
\begin{split}
\bar{x}^TA\bar{x} &= 
[x_1 \;\; x_2 \;\; x_3]
\begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} 
\end{bmatrix}
\begin{bmatrix}
x_1 \\
x_3 \\
x_3 \\
\end{bmatrix} \\
&= a_{11}x_1^2 + a_{22}x_2^2 + a_{33}x_3^2 + \\
& \quad(a_{12} + a_{21})x_1x_2 + (a_{13} + a_{31})x_1x_3 + (a_{23} + a_{32})x_2x_3 
\end{split} 
\tag{1}
$$
Since $A$ is symmetric, we have $a_{ij} = a_{ji}$, thus 

$$
\bar{x}^TA\bar{x}  = a_{11}x_1^2 + a_{22}x_2^2 + a_{33}x_3^2 + 2a_{12}x_1x_2 + 2a_{13}x_1x_3 + 2a_{23}x_2x_3 \tag{2} 
$$
This verifies that $\bar{x}^TA\bar{x}$ when $A \in \mathbb{R}^{n \times n}$ is symmetric does result in a quadratic function of $n$ variables. Conversely, any quadratic function of $n$ variables, like shown in $(2)$, can be expressed in terms of $\bar{x}^TA\bar{x}$ with unique choice of symmetric matrix $A \in \mathbb{R}^{n \times n}$.  

### Change of Variable 

If $\bar{x}$ is a variable vector in $\mathbb{R}^n$, then a *change of variable* is an equation of the form 

$$
\begin{aligned}
\bar{x} &= P\bar{y} \\
\text{or equivalently} \quad \bar{y} &= P^{-1}\bar{x}
\end{aligned}
$$
where $P$ is any invertible matrix $\in \mathbb{R}^{n \times n}$

\BeginKnitrBlock{theorem}\iffalse{-91-84-104-101-32-80-114-105-110-99-105-112-97-108-32-65-120-101-115-32-84-104-101-111-114-101-109-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:principal-axes"><strong>(\#thm:principal-axes)  \iffalse (The Principal Axes Theorem) \fi{} </strong></span>Let $A$ be an $n \times n$ symmetric matrix. Then there exists an orthogonal change of variable, $\bar{x} = Q\bar{y}$, this transform the quadratic form $\bar{x}^TA\bar{x}$ into a quadratic form $\bar{y}^T\Lambda\bar{y}$ with no cross-product term.  

$Q$ is constructed with $A$'s orthonormal eigenvectors $\bar{q}_1, ..., \bar{q}_n$. According to theorem \@ref(eq:orthogonal-diagonalization): 

$$
\bar{x}^TA\bar{x} = (Q\bar{y})^TA(Q\bar{y}) = \bar{y}^TQ^{T}AQ\bar{y} = \bar{y}^T \Lambda \bar{y}
$$</div>\EndKnitrBlock{theorem}



The principal axes theorem \@ref(thm:principal-axes) shows that if $A$ is diagonalizable, quadratic form $\bar{x}^TA\bar{x}$ can be reexpressed into the form $\lambda_1y_1^2 + \lambda_2y_2^2 +  \cdots + \lambda_ny_n^2$ with change of variables $\bar{x} = Q\bar{y}$. 

### Classification of Quadratic Forms 

- A symmetric matrix $A \in \mathbb{S}^n$ is **positive definite** (PD) if for all non-zero vectors $\bar{x} \in \mathbb{R}^n,\; \bar{x}^TA\bar{x} > 0$. We can denote positive definite matrix $A$ as $A \succ 0$ (or $A > 0$). The set of all positive definite matrices is denoted as $\mathbb{S}_{++}^n$  

- A symmetric matrix $A \in \mathbb{S}^n$ is **positive semidefinite** (PSD) if for all non-zero vectors $\bar{x} \in \mathbb{R}^n,\; \bar{x}^TA\bar{x} \ge 0$. We can denote positive definite matrix $A$ as $A \succeq 0$ (or $A \ge 0$). The set of all positive semidefinite matrices is denoted as $\mathbb{S}_{+}^n$  

- A symmetric matrix $A \in \mathbb{S}^n$ is **negative definite** (ND), denoted by $A \prec 0$ (or $A < 0$),  if for all non-zero vectors $\bar{x} \in \mathbb{R}^n,\; \bar{x}^TA\bar{x} < 0$.  

- Similarly, a symmetric matrix $A \in \mathbb{S}^n$ is **negative semidefinite** (NSD), denoted by $A \preceq 0$ (or $A \le 0$),  if for all non-zero vectors $\bar{x} \in \mathbb{R}^n,\; \bar{x}^TA\bar{x} \le 0$.   

- Finally,  a symmetric matrix $A \in \mathbb{S}^n$ is **indefinite**, if it is neither positive semidefinite or negative semidefinite. In other words, if there exists $\bar{x}, \bar{x}', \in \mathbb{R}^{n}$ such taht $\bar{x}^TA\bar{x} > 0$ and $\bar{x'}^TA\bar{x}' > 0$

\BeginKnitrBlock{rmdnote}<div class="rmdnote">Note that when talking about $A$ being PD, PSD, ND, NSD or indefinite, $A$ is always assumed to be **symmetric**.

Also, if $A$ is positive definite, then $−A$ is negative definite and viceversa. Likewise, if $A$ is positive semidefinite then $−A$ is negative semidefinite and vice versa. If $A$ is indefinite, then so is $−A$. </div>\EndKnitrBlock{rmdnote}

From theorem \@ref(thm:principal-axes), we know that the sign of eigenvalues are closely related to classifications of symmetric matrices here. Take positive definite matrices for example, the following statements of $A$ are equivalent: 

- For any $\bar{x} \in \mathbb{R}^n, \; \bar{x}^TA\bar{x} > 0$  

- Let $\lambda_i, \; i = 1, ..., n$ be $A$'s eigenvalues, $\lambda_i > 0$  

- All pivots are $> 0$  

- All leading determinants of $A > 0$  

For the last criterion, leading determinant is the determinant of the top-left $k \times k$ lock of $A$ for all $1 \le k \le n$. There is formal theorem on this 

\BeginKnitrBlock{theorem}\iffalse{-91-83-121-108-118-101-115-116-101-114-39-115-32-67-114-105-116-101-114-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:sylvester-criterion"><strong>(\#thm:sylvester-criterion)  \iffalse (Sylvester's Criterion) \fi{} </strong></span>A symmetric matrix $A$ is positive definite if and only if the determinant of the top-left $k \times k$ block of $A$ is strictly positive for all $1 \le k \le n$</div>\EndKnitrBlock{theorem}

Sylvester's criterion is more complicated for positive semidefinite matrices, we have to check more matrices rather than just the top-left one. 


<br>

Classification of $A \in \mathbb{S}^{n}$ by its eigenvalue can be applied in general. 

<hr>
\BeginKnitrBlock{theorem}\iffalse{-91-81-117-97-100-114-97-116-105-99-32-102-111-114-109-115-32-97-110-100-32-101-105-103-101-110-118-97-108-117-101-115-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-13"><strong>(\#thm:unnamed-chunk-13)  \iffalse (Quadratic forms and eigenvalues) \fi{} </strong></span>Let $A \in \mathbb{S}^{n}$. Then the quadratic form $\bar{x}^TA\bar{x}$ and $A$ is: 
   
- positive definite if and only if the eigenvalues of $A$ are all positive  

- negative definite if and only if the eigenvalues of $A$ are all negative  

- indefinite if and only if $A$ has both positive and negative eigenvalues</div>\EndKnitrBlock{theorem}



<hr>  

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-14"><strong>(\#cor:unnamed-chunk-14) </strong></span>Given positive definite matrices $A, B \in \mathbb{S}^n$ and $\alpha \in \mathbb{R}$, the following results **remain to be positive definite**. </div>\EndKnitrBlock{corollary}


- Scalar multiplication of PD matrices $\alpha A$ are PD matrices 

- The sum of PD matrices $A +B$ are PD matrices

- If a PD matrix is invertible, its inverse $A^{-1}$ is also PD.    

- Similar matrix of a PD matrix is PD. 




<hr>

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:ata-pd"><strong>(\#cor:ata-pd) </strong></span>Given any matrix $A \in \mathbb{R}^{m \times n}$, $A^TA$ and $AA^T$ are always positive semidefinite matrices</div>\EndKnitrBlock{corollary}

<div class = "proof"> Proof </div>  

By definition, $A^TA$ is a positive semidefinite matrix if for any $\bar{x} \in \mathbb{R}^n$, the quadratic form $\bar{x}^T(A^TA)\bar{x} \ge 0$. 

$$
\begin{split}
\bar{x}^T(A^TA)\bar{x} &= (\bar{x}^TA^T)(A\bar{x}) \\
&= (A\bar{x})^T(A\bar{x}) \\
&= \|A\bar{x}\|^2
\end{split}
$$
It turns out that the result is the square of the 2-norm of $A\bar{x}$ (nonnegative). This also tells $A^TA$ is positive definite when $\bar{x} \not\subseteq \mathcal{N}(A)$

Similarly, the quadratic form for $AA^T$ can be refactored in to the standard norm of $A^T\bar{x}$.   

<hr>

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:ridge-invertible"><strong>(\#cor:ridge-invertible) </strong></span>$A^TA +\lambda I$ and $AA^T + \lambda I$ are always positive definite and invertible for $\lambda > 0$</div>\EndKnitrBlock{corollary}

<div class = "proof"> Proof </div>

From the previous corollary \@ref(cor:ata-pd) we know that $A^TA$ and $AA^T$ are positive semidefinite, and that they have the same nonzero eigenvalues from corollary \@ref(cor:same-nonzero). According to Section \@ref(additional-properties-of-eigenvalues-and-eigenvectors), eigenvalues for $P(A)$ are $P(\lambda)$ for polynomial function $P$. Therefore, $A^TA +\lambda I$ and $AA^T + \lambda I$ share a positive set of $n$ eigenvalues $\lambda_1 + \lambda, ..., \lambda_r + \lambda, \lambda, ..., \lambda$, so they are PD and invertible.  


### Gershgorin Discs and Diagonal Dominance

This section introduces one more criterion for positive definite matrices. We first present the Gershgorin Disc Theorem, which is more convenient to be expressed in terms of complex matrices.


\BeginKnitrBlock{theorem}\iffalse{-91-71-101-114-115-104-103-111-114-105-110-32-68-105-115-99-32-84-104-101-111-114-101-109-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-15"><strong>(\#thm:unnamed-chunk-15)  \iffalse (Gershgorin Disc Theorem) \fi{} </strong></span>Let $A \in \mathcal{M}_n(\mathbb{C})$ and define the following objects 

- $r_i = \sum_{j \not = i}|a_{ij}|$ (the sum of the off-diagonal entries of the $i$-th row of $A$)  

- $D(a_{ii}, r_i)$ is the closed disc in the complex plane centered at $a_{ii}$ with radius $r_i$. 

Then every eigenvalue of $A$ is in at least one of the $D(a_{ii}, r_i)$ (called *Gershigorin discs*)
</div>\EndKnitrBlock{theorem}


As an illustration taken from Wikipedia, the following figure presents 4 Gershgorin discs of the matrix 

$$
\begin{bmatrix}
10 & -1 & 0 & 1 \\
0.2 & 8 & 0.2 & 0.2 \\
1 & 1 & 2 & 1 \\
-1 & -1 & -1 & -11
\end{bmatrix}
$$

In this case, all elements and eigenvalues are real. Therefore, Gershgorin discs are circles centered at the real number line. 

<img src="images/gershgorin-disc.png" width="640" style="display: block; margin: auto;" />



\BeginKnitrBlock{proof}<div class="proof">Proof</div>\EndKnitrBlock{proof}


Let $\lambda$ be an eigenvalue of $A$ with associated eigenvector $\bar{v}$. Suppose the largest entry of $\bar{v}$ is
$v_i$, we scale $\bar{v}$ such that $v_i = 1$ and all other elements less than $1$. Note $\lambda$ and $i$ are arbitrary, for example, the associated eigenvector of the 3rd eigenvalue may have the largest entry at $v_5$. 

By the definition of  matrix multiplication, we know $[A \bar{v}]_i = \sum_{j = 1}^{n}a_{ij}v_j = a_{ij}v_i + \sum_{j \not = i}a_{ij}v_j$. Also $\lambda$ is an eigenvalue and $v_i = 1$, thus $[A\bar{v}]_i = \lambda v_ia$. Then

$$
a_{ij}\underbrace{v_i}_{1} + \sum_{j \not = i}a_{ij}v_j =  \lambda\underbrace{v_i}_{1}
$$

$$
\lambda - a_{ii} = \sum_{j \not = i}a_{ij}v_j
$$

Take absolute values on both sides and use the triangle equality

$$
|\lambda - a_{ii}| = |\sum_{j \not = i}a_{ij}v_j| \le \sum_{j \not = i} |a_{ij}||v_j| \qquad (v_j \le 1) 
$$

$$
|\lambda - a_{ii}| \le  \sum_{j \not = i} |a_{ij}| = r_i
$$
In other words, for any eigenvalue $\lambda$, the distance between $\lambda$ and $a_{ii}$ is less than $r_i$, where $i$ is the index at which $\lambda$'s associated eigenvector take its largest value. 

For diagonal entries, all $r_i = 0$, thus their eigenvalues are exactly diagonal entries. 

In cases where the off diagonal entries of $A$ are very small, then $A$'s eigenvalue will be very close to diagonal entries. This leads to the notion of diagonal dominance. 

\BeginKnitrBlock{theorem}\iffalse{-91-68-105-97-103-111-110-97-108-32-100-111-109-105-110-97-110-116-32-109-97-116-114-105-120-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:diagonal-dominance"><strong>(\#thm:diagonal-dominance)  \iffalse (Diagonal dominant matrix) \fi{} </strong></span>
Suppose that $A \in \mathcal{M}_n{(\mathbb{C})}$, then $A$ is called 

1. **diagonally dominant** if $|a_{ii}| \ge \sum_{j \not = i}|a_{ij}|$ for all $1 \le i \le n$ and 

2. **strictly diagonally dominant** if $|a_{ii}| > \sum_{j \not = i}|a_{ij}|$ for all $1 \le i \le n$
</div>\EndKnitrBlock{theorem}


A strictly diagonally dominant matrix is non-singular, because all of its Gershgorin discs do not touch zero. This result is known the *Levy-Desplanques theorem*


\BeginKnitrBlock{corollary}\iffalse{-91-110-111-110-45-110-101-103-97-116-105-118-101-32-100-105-97-103-111-110-97-108-32-101-110-116-114-105-101-115-32-97-110-100-32-100-105-97-103-111-110-97-108-32-100-111-109-105-110-97-110-99-101-32-105-109-112-108-105-101-115-32-80-83-68-93-}\fi{}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-18"><strong>(\#cor:unnamed-chunk-18)  \iffalse (non-negative diagonal entries and diagonal dominance implies PSD) \fi{} </strong></span>

Suppose that $A \in \mathcal{M}_n{(\mathbb{C})}$ has **non-negative** diagonal entries

- If $A$ is diagonally dominant then it is positive semidefinite  

- If $A$ is strictly dominant then it is positive definite</div>\EndKnitrBlock{corollary}

Note that this is a one-way theorem, unlike the criterion using eigenvalues, pivots and leading matrices. A PD matrix may not be diagonally dominant.  


## Cholesky Factorization  

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-19"><strong>(\#lem:unnamed-chunk-19) </strong></span>A symmetric matrix $A \in \mathbb{S}^n$ is positive semidefinite if and only if it can be expressed in the gram matrix form $B^TB$ of some matrix $B$. </div>\EndKnitrBlock{lemma}

<br>

The previous corollary \@ref(cor:ata-pd) shows that if $A = B^TB$ then it is positive definite. Conversely, if $A$ is PSD (or PD), we have $A = Q \Lambda Q^T$ where $\Lambda$'s diagonal entries are all nonnegative. Then we can set $\Lambda ^{1/2} = \Sigma$ and $B = (Q\Sigma)^T$. Then $A = Q\Sigma^2Q^T = (Q\Sigma)(Q\Sigma)^T = B^TB$. 

Note that we could also have stated this lemma using $BB^T$ instead of $B^TB$, and the proof is similar.   

This lemma is inspiring in that for every PD matrix $A \in \mathbb{R}^n$, there exists factorization $A = BB^T$. 

In fact, this factorization is not unique. We can use an orthogonal matrix $Q$ to create an additional orthogonal factorization $A = BB^T = B(QQ^T)B^T = (BQ)(BQ)^T$. And let $BQ$ be our new $B$, we get another factorization.  

Since the initial $B = P\Lambda^{1/2}$ is full rank, with an appropriate choice of $Q$, we can turn the $PB$ into an **lower triangular matrix** $L$ such that $A = LL^T$. This is essentailly a coordinate transformation in Section \@ref(change-of-basis)

The uniqueness of this factorization with lower triangular matrix $L$ can be proved with induction. The decomposition of PD matrices into the product of an lower triangular matrix and its transpose is called the **Cholesky factorization**, in this factorization

$$
A = LL^T
$$

To make it more clear

$$
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nn}
\end{bmatrix}
= 
\begin{bmatrix}
l_{11} & \cdots & 0\\
\vdots & \ddots & \vdots \\
l_{n1} & \cdots & l_{nn}
\end{bmatrix}
\begin{bmatrix}
l_{11} & \cdots & l_{n1} \\
\vdots & \ddots & \vdots \\
0 & \cdots & l_{nn}
\end{bmatrix}
$$

Since $L$ is lower triangular, we can solve $L$ from $A = LL^T$ with a system of equations that can be easily solved using back-substitution. For example, $l_{11} = \sqrt{a_{11}}$, and $a_{i1} / l_{11}$. 

The Cholesky factorization is a special case of LU decomposition

## Rayleigh Quotients 

Let $A \in \mathbb{S}^n$ and $\bar{x} \in \mathbb{R}^n$, **Rayleigh quotient** is defined as 

$$
R_{A}(\bar{x}) = \frac{\bar{x}^TA\bar{x}}{\bar{x}^T\bar{x}}
$$
The Rayleigh quotient has some nice properties: 

- scale invariance: for any vector $\bar{x} \not= 0$ and any scalar $\alpha \not= 0$, $R_{A}(\bar{x}) = R_{A}(\alpha\bar{x})$  

- If $\bar{x}$ is a eigenvector of $A$ with eigenvalue $\lambda$, then $R_{A}(\bar{x}) = \lambda$

- The Rayleigh quotient is bounded by the largest and smallest eigenvalue of $A$, i.e. 

$$
\lambda_{\text{min}}(A) \le R_{A}(\bar{x}) \le \lambda_{\text{max}}(A)
$$

<div class = "proof"> Proof </div> 

Since the Rayleigh quotient does not depend on the 2-norm of vector $\bar{x}$, we may assume a unit vector $\bar{x}^T\bar{x} = 1$, and Rayleigh quotient simplifies to the quadratic form $\bar{x}^TA\bar{x}$. 

Next, orthogonally diagonalize $A$ as $Q \Lambda Q$, we know that when $\bar{x} = Q \bar{y}$: 

$$
\bar{x}^TA\bar{x} = \bar{y}^T \Lambda \bar{y} \tag{1}
$$
Also 

$$
1= \bar{x}^T\bar{x} = (Q\bar{y})^T Q\bar{y} = \bar{y}^TQ^TQ\bar{y} = \bar{y}^T\bar{y} \tag{2}
$$

Expand $\bar{y}^T \Lambda \bar{y}$ in (1) we get 

$$
\bar{x}^TA\bar{x} = \lambda_1y_1^2 + \lambda_2y_2^2 + \cdots + \lambda_ny_n^2 \tag{3}
$$
where $\{\lambda_1, ..., \lambda_n\}$ are diagonal entries of $\Lambda$ and eigenvalues of $A$. Let us suppose that the set $\{\lambda_1, \lambda_2, \cdots, \lambda_n\}$ has already been ordered descendingly, so that $\lambda_1 > \lambda_2 > \cdots > \lambda_n$. 

We can obtain the inequality from (3) and the order of eigenvalues: 

$$
\begin{split}
\bar{x}^TA\bar{x} &= \lambda_1y_1^2 + \lambda_2y_2^2 + \cdots + \lambda_ny_n^2 \\
&\le \lambda_1y_1^2 + \underbrace{\lambda_1y_2^2 + \cdots + \lambda_1y_n^2}_{\lambda_1 \text{ is the greatest eigenvalue}} \\ 
&\le \lambda_1(\bar{y}^T\bar{y}) \\
&= \lambda_1
\end{split}
$$
The equation reach equality if and only if $[y_1, y_2, \cdots, y_n] = [1, 0, \cdots, 0]$. Since $\bar{x} = Q\bar{y}$, we have 

$$
\bar{x} = 
\begin{bmatrix}
\bar{q}_1 & \bar{q}_2 & \cdots & \bar{q}_n
\end{bmatrix}
\begin{bmatrix}
1 \\
0 \\
\vdots \\
0
\end{bmatrix}
= \bar{q}_1
$$
Similarly, the minimum of the Rayleigh quotient will be $\lambda_n$, with $\bar{x} = \bar{q}_n$. 


<hr>

From the optimization perspective, the bound of Rayleigh quotient amounts to a constrained optimization problem 

$$
\begin{aligned}
\text{objective function} &:  \bar{x}^TA\bar{x}\\
\text{subject to}&: \bar{x}^T\bar{x} = 1 
\end{aligned}
$$
The maximum and minimum of the objective function are $\lambda_1$ and $\lambda_n$, with $\bar{x}$ being $\bar{q}_1$ and $\bar{q}_n$ respectively. 

If we add more constraints, for example, that $\bar{x}$ should be orthogonal to $\bar{q}_1$, then $\bar{x}^TA\bar{x}$ has maximum $\lambda_2$ attained at $\bar{x} = \lambda_2$

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-20"><strong>(\#thm:unnamed-chunk-20) </strong></span>Let $A \in \mathbb{S}^n$ with orthogonal diagonalization $A = Q\Lambda Q^T$, where the entries on the diagonal of $\Lambda$ are arranged so that $\lambda_1 \ge \lambda_2 \ge \cdots \ge \lambda_n$. Then for $k = 2, ...$, the maximum of value of $\bar{x}^T A \bar{x}$ subject to constraints 

$$
\bar{x}^T\bar{x} =  1, \;\; \bar{x}^T\bar{q}_1 = 0, \;\; \dots \;\;, \bar{x}^T\bar{q}_{k-1} = 0
$$
is the eigenvalue $\lambda_k$, and this maximum is attained at $\bar{x} = \bar{q}_k$</div>\EndKnitrBlock{theorem}

<div class = "proof"> Proof </div>

From $\bar{x} = P\bar{y}$ we know that

$$
\bar{x} = y_1\bar{q}_1 + \cdots + + y_{k-1}\bar{q}_{k-1} + y_k\bar{q}_k + \cdots +  y_{n}\bar{q}_n 
$$
Left multiply by $\bar{q}_1^T$ 

$$
\begin{aligned}
\bar{q}_1^T\bar{x} &= y_1\bar{q}_1^T\bar{q}_1 + \cdots + + y_{k-1}\bar{q}_1^T\bar{q}_{k-1} + y_k\bar{q}_1^T\bar{q}_k + \cdots +  y_{n}\bar{q}_1^T\bar{q}_n  \\
&= y_1\bar{q}_1^T\bar{q}_1 \\
&= y_1
\end{aligned} 
$$
Since $\bar{q}_1^T\bar{x} = \bar{x}^T\bar{q}_1 = 0$, we have $y_1 = 0$. Similarly, $y_2 = \cdots = y_{k-1} = 0$, and $\bar{y}$ becomes $[0 \;\; \cdots \;\; 0 \;\; y_{k} \;\; \cdots \;\; y_n]$. And the inequality now becomes: 

$$
\begin{split}
\bar{x}^TA\bar{x} &= \lambda_1y_1^2 + \lambda_2y_2^2 + \cdots + \lambda_ny_n^2 \\
&= \lambda_ky_k^2 + \cdots + \lambda_ny_n^ 2 \\
&\le \lambda_ky_k^2 + \cdots + \lambda_ky_n^2 \\ 
&\le \lambda_k(\bar{y}^T\bar{y}) \\
&= \lambda_k
\end{split}
$$

It's easy to see that $\bar{x}^TA\bar{x}$ gets its maximum $\lambda_k$ when $y_k = 0$ and other weights being zero. So the solution $\bar{x}$ can be solved as 

$$
\begin{split}
\bar{x} &= 
\begin{bmatrix}
\bar{q}_1 &  \cdots & \bar{q}_k &   \bar{q}_{k+1} & \cdots &\bar{q}_n
\end{bmatrix}
\begin{bmatrix}
0 \\
\vdots \\
\underbrace{1}_{k\text{th weight}} \\
0 \\
\vdots \\
0
\end{bmatrix} \\
&= \bar{q}_k
\end{split}
$$






