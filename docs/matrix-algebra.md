
# (PART) Linear Algebra {-}


# Matrix Algebra  



## Elemetary matrix and row operations  
An elementary matrix is one that is obtained by performing a single elementary row
operation on an identity matrix $I$. Each elementary matrix $E$ is invertible. The inverse of $E$ is the elementary matrix of the same type that transforms $E$ back into $I$.


## Matrix multiplication

A common way of looking at matrix-vector multiplication $A\boldsymbol{x}$ is to think of as a linear combination of column vectors in $A$:  

$$
\begin{aligned}
A\boldsymbol{x} &= [\boldsymbol{a}_1 \cdots \boldsymbol{a}_n] 
\begin{bmatrix}
x_1 \\
\vdots \\
x_n
\end{bmatrix} \\
&= x_1\boldsymbol{a}_1 + \cdots + x_n\boldsymbol{a}_n
\end{aligned}
$$


Likewise, for any $\boldsymbol{x}^{T} = [x_1, \cdots, x_n]^T$ and matrix $A_{m \times n}$, $x^{T}A$ can be thought of as a linear combination of rows in $A$ to produce a new row vector: 

$$
[x_1, \cdots, x_n] 
\begin{bmatrix}
\boldsymbol{a}_1^T \\
\vdots  \\
\boldsymbol{a}_n^T
\end{bmatrix} 
= x_1\boldsymbol{a}_1^T + \dots + x_n\boldsymbol{a}_n^T
$$
For matrix-matrix multiplication $AB$, besides the dot product definition we can see it as **column row expansion**.  

<br>

(ref:cr-expansion) Column-row expansion of $AB$

\BeginKnitrBlock{theorem}\iffalse{-91-40-114-101-102-58-99-114-45-101-120-112-97-110-115-105-111-110-41-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1)  \iffalse ((ref:cr-expansion)) \fi{} </strong></span>
if $A$ is $m \times n$ and $B$ is $n \times p$, then 

$$
\begin{aligned}
AB &= [\text{col}_1(A) \cdots \text{col}_n(A)] 
\begin{bmatrix}
\text{row}_1(B) \\
\vdots \\ 
\text{row}_n(B)
\end{bmatrix} \\ 
&= \text{col}_1(A)\text{row}_1(B) + \cdots +  \text{col}_n(A)\text{row}_n(B)
\end{aligned}
$$</div>\EndKnitrBlock{theorem}


Note that each $\text{col}_1(A)\text{row}_1(B)$ is a rank 1 $m \times p$ matrix. 




## Arithmetic properties   


\BeginKnitrBlock{rmdnote}<div class="rmdnote">Note that the inverse of a matrix is only defined for square matrces, so is determinants in Section \@ref(determinants)</div>\EndKnitrBlock{rmdnote}


### Inverse of a matrix

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-3"><strong>(\#thm:unnamed-chunk-3) </strong></span>If A and B are both invertible matrces, we have

$$
(AB)^{-1} = B^{-1}A^{-1}
$$

$$
(A^{-1})^{-1} = A  
$$
  

$$
(A^T)^{-1} = (A^{-1})^T
$$</div>\EndKnitrBlock{theorem}



\BeginKnitrBlock{rmdnote}<div class="rmdnote">In practice $A^{-1}$ is seldom computed, because computing both $A^{-1}$ and $A^{-1}\boldsymbol{b}$ to solve linear equations takes about 3 times as many arithmetic operations as solving $A\boldsymbol{x} = \boldsymbol{b}$ by row reduction.</div>\EndKnitrBlock{rmdnote}


## LU factorization 

https://fml-fam.github.io/blog/2020/07/03/matrix-factorizations-for-data-analysis/

A *factorization* a matrix $A$ is an equation that expresses $A$ as a product of two or more matrices.  

\BeginKnitrBlock{definition}\iffalse{-91-76-85-32-102-97-99-116-111-114-105-122-97-116-105-111-110-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-5"><strong>(\#def:unnamed-chunk-5)  \iffalse (LU factorization) \fi{} </strong></span>  
Suppose $A$ can be reduced to an echelon form $U$ using row operations that add a multiple ofo oone row to another row *below* it, there exist a set of unit lower trangular matrices $E_1, \dots, E_p$ such that 

$$
E_p \cdots E_1A = U  
$$
  
Then 

$$
A = (E_p \cdots E_1)^{-1}U = LU
$$

where 
$$
L = (E_p \cdots E_1)^{-1}  
$$</div>\EndKnitrBlock{definition}


## Determinants

### Properties of determinants 

A list of arithmetic properties of determinants, A is an $n\times n$ maatrix: 

1. $\det A^T = \det A$
2. $\det (\lambda A) = \lambda^n \det A$
3. $\det (AB) = \det A \times \det B$ (although $AB \not = BA$)  


### Cramer's rule

Given an $n \times n$ matrix $A$ and $\boldsymbol{b}$ in $\mathbb{\mathbb{R^n}}$, denote $A_i(\boldsymbol{b})$ as the matrix derived by $A$ by **replacing** column $i$ by vector $\boldsymbol{b}$:  

$$
A_i(\boldsymbol{b}) = [\boldsymbol{a}_1 \cdots \underbrace{\boldsymbol{b}}_{\text{column} \,i} \cdots \boldsymbol{a}_n]
$$

\BeginKnitrBlock{definition}\iffalse{-91-67-114-97-109-101-114-39-115-32-114-117-108-101-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-6"><strong>(\#def:unnamed-chunk-6)  \iffalse (Cramer's rule) \fi{} </strong></span>Let $A$ be an invertible $n \times n$ matrix. For any $\boldsymbol{b}$ $\mathbb{R^n}$, the unique solution $\boldsymbol{x}$ of $A\boldsymbol{x} = \boldsymbol{b}$ has entries given by: 

$$
x_i = \frac{\det A_i(\boldsymbol{b})}{\det A}
$$</div>\EndKnitrBlock{definition}




## Matrix multiplication as linear transformation

The equation $A_{m \times n} \, x _{ n \times 1} = b_{m \times 1}$ can arise in a way that is not directly connected with linear combination of column vectors. That is,  we think of the matrix $A$ as an force that “acts” on a vector $x$ in $\mathbb{R^n}$ by multiplication to produce a new vector called $b$ in $R^m$.  

A transformation $T$ from $\mathbb{R^n}$ to $R^m$ is a rule that assigns each vector \boldsymbol{x} in $\mathbb{R^n}$ a vector $T(x)$ in $R^m$, which is called the **image** of \boldsymbol{x} (under the action of $T$). 

It can be show that such transformations induced by multiplying a matrix is a type of **linear transformation**, because it satisfies all required properties to be linear:  

$$
\begin{aligned}
\text{vector addition} \quad A(\boldsymbol{u} + \boldsymbol{v}) &= A\boldsymbol{u} + A\boldsymbol{v}  \\ 
\text{scalar multiplication} \quad A(c\boldsymbol{u}) &= cA\boldsymbol{u}
\end{aligned}
$$
<hr>

\BeginKnitrBlock{theorem}\iffalse{-91-108-101-102-116-32-109-117-108-116-105-112-108-105-99-97-116-105-111-110-32-97-115-32-108-105-110-101-97-114-32-116-114-97-110-115-102-111-114-109-97-116-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-7"><strong>(\#thm:unnamed-chunk-7)  \iffalse (left multiplication as linear transformation) \fi{} </strong></span>There is a one to one relationship between a linear transformation and a matrix. Let $T: \mathbb{R^n} \rightarrow R^m$ be a linear transformation. Then there exists a **unique** matrix $A$ such that:  
  
$$
T(x) = Ax \quad \text{for all} \; x \; \text{in} \; \mathbb{R^n}  
$$
  
In fact, $A$ is a $m \times n$ matrix whose $j$th column is the vector $T(\boldsymbol{e_j})$, where $\boldsymbol{e_j}$ is the $j$th basis of $\mathbb{R^n}$ </div>\EndKnitrBlock{theorem}

**Proof**: 

$$
\boldsymbol{x} = x_1\boldsymbol{e_1} + \dots + x_n{\boldsymbol{e_n}}
$$
And because $T(\boldsymbol{x})$ is a linear transformation: 

$$
\begin{split}
T(\boldsymbol{x}) &= x_1T(\boldsymbol{e_1}) + \dots + x_nT(\boldsymbol{e_n}) \\
&= [T(\boldsymbol{e_1}) \, \cdots \, T(\boldsymbol{e_n})]\boldsymbol{x} \\
&= (A\boldsymbol{x})_{m \times 1}
\end{split}
$$

In other words, the transformation is specified once we know what all basis in $\mathbb{R^n}$ become in $R^m$.

The matrix $A$ is called the **standard matrix for the linear transformation** $T$.  

<hr>

(ref:onto) A mapping is onto $R^m$

\BeginKnitrBlock{definition}\iffalse{-91-40-114-101-102-58-111-110-116-111-41-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-8"><strong>(\#def:unnamed-chunk-8)  \iffalse ((ref:onto)) \fi{} </strong></span>A mapping $T: \mathbb{R^n} \rightarrow R^m$ is said to be **onto** R^m if each $\boldsymbol{b}$ in $R^m$ is the image of at least one $\boldsymbol{x}$ in \mathbb{R^n}</div>\EndKnitrBlock{definition}

Equivalently, $T$ is onto $R^m$ means that there exists at least one solution of $T(\boldsymbol{x}) = \boldsymbol{b}$

<br>

\BeginKnitrBlock{definition}\iffalse{-91-111-110-101-45-116-111-45-111-110-101-32-109-97-112-112-105-110-103-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-9"><strong>(\#def:unnamed-chunk-9)  \iffalse (one-to-one mapping) \fi{} </strong></span>A mapping T: $\mathbb{R^n} \rightarrow R^m$ is said to be **one-to-one** if each $\boldsymbol{b}$ in $R^m$ is the image of *at most* one $\boldsymbol{x}$ in $\mathbb{R^n}$</div>\EndKnitrBlock{definition}

Equivalently, $T$ is one-to-one if, for each $\boldsymbol{b}$ in $R^m$, the equation $T(\boldsymbol{x}) = \boldsymbol{b}$ has either a unique solution or none at all.  



## Special matrices and their properties 

### Orthogonal matrices  

An *orthogonal matrix* is a square matrix whose inverse is its transpose:  

$$
(\#eq:orthogonal)
AA^T = A^TA = I
$$

Another way of defining it is that an orthogonal matrix has both **orthogonal columns** and **orthogonal rows**.
