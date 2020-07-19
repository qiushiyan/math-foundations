
# (PART) Linear Algebra {-}


# Matrix basics






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



## Elemetary matrix and row operations  

An *elementary matrix* is one that is obtained by performing a single elementary row
operation on an identity matrix $I$. Each elementary matrix $E$ is invertible. The inverse of $E$ is the elementary matrix of the same type that transforms $E$ back into $I$.  

Left multiplication by a elementary matrix has a nice illustration. There are 3 primary types of elementary matrices (example for $3 \times 3$):  

$$
E_1 = 
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
-4 & 0 & 1
\end{bmatrix} 
, 
E_2 = 
\begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} 
,
E_3 = 
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 5
\end{bmatrix} 
$$
$E_1, E_2, E_3$ represents 3 types of elementary row operations applicable to a $3 \times 3$ matrix, (1) *replacement*; (2) *interchange* and (3) *scaling*. We can verify this by right multiply them with an arbitrary matrix $A$ 

$$
\begin{aligned}
E_1A &= 
\begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
- 4a_{11} + a_{31} & -4a_{12} + a_{32} & -4a_{13} + a_{33}
\end{bmatrix}  \\ \\  
E_2A &= 
\begin{bmatrix}
a_{21} & a_{22} & a_{23} \\
a_{11} & a_{12} & a_{13} \\
a_{31} & a_{32} & a_{33}
\end{bmatrix} \\ \\
E_3A &= 
\begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
5a_{31} & 5a_{32} & 5a_{33} \\
\end{bmatrix}
\end{aligned}
$$
Thus, any row operation on $A$ is equivalent to left multiply a corresponding elementary matrix $E$.  

Since row operation are invertible, elementary matrices are invertible. This gives a general way of finding the inverse matrix of $A$.  

\BeginKnitrBlock{theorem}\iffalse{-91-97-110-32-97-108-103-111-114-105-116-104-109-32-102-111-114-32-102-105-110-100-105-110-103-32-105-110-118-101-114-115-101-32-109-97-116-114-105-99-101-115-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:find-inverse"><strong>(\#thm:find-inverse)  \iffalse (an algorithm for finding inverse matrices) \fi{} </strong></span>Row reduce the augmented matrix $[A \;\; I]$, when $A$ becomes $I$, $I$ becomes $A^{-1}$. Otherwise $A^{-1}$ is not invertible. </div>\EndKnitrBlock{theorem}





## LU factorization 

https://fml-fam.github.io/blog/2020/07/03/matrix-factorizations-for-data-analysis/

A *factorization* a matrix $A$ is an equation that expresses $A$ as a product of two or more matrices.  

\BeginKnitrBlock{definition}\iffalse{-91-76-85-32-102-97-99-116-111-114-105-122-97-116-105-111-110-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-2"><strong>(\#def:unnamed-chunk-2)  \iffalse (LU factorization) \fi{} </strong></span>  
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


### Cofactor expansion

The $(i, j)\text{-cofactor}$ of $A$ is a number $C_{ij}$ in $\mathbb{R}$ given by 

$$
C_{ij} = (-1)^{i + j} \det A_{ij}
$$
where $A_{ij}$ denotes the submatrix formed by deleting the $i$h row and $j$th column of $A$. 

\BeginKnitrBlock{theorem}\iffalse{-91-99-111-102-97-99-116-111-114-32-101-120-112-97-110-115-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:cofactor-expansion"><strong>(\#thm:cofactor-expansion)  \iffalse (cofactor expansion) \fi{} </strong></span>The determinant of an $n \times n$ matrix is given by a **cofactor expasion** across any row or column. For example, the expansion across the $i$th row is:  

$$
\det A = a_{i1}C_{i1} + a_{i2}C_{i2} + \cdots + a_{in}C_{in} 
$$
  
and cross the $j$th column is 

$$
\det A = a_{1j}C_{1j} + a_{2j}C_{2j} + \cdots + a_{nj}C_{nj} 
$$</div>\EndKnitrBlock{theorem}




### Geometric interpretation of determinant 

Given matrix $A_{n \times n}$  

$$
\begin{bmatrix}
a_1^{T} \\
a_2^{T} \\
\vdots \\
a_n^{T}
\end{bmatrix}
$$
where $a_1, ..., a_n$ are row vectors of A. Then $|\det A|$ is the volume of parallelotope constrained by $a_1, ..., a_n$. When $A$ is $2\times2$, $|\det A|$ is simply the area of the parallelogram defined by two side $a_1, a_2$


### Properties of determinant 

A list of arithmetic properties of determinants, A is an $n\times n$ matrix: 

1. $\det(A^T) = \det(A)$
2. $\det(kA) = k^n \det(A)$
3. $\det(AB) = \det(A)\det(B)$ (although $AB \not = BA$ in general), it follows that  $\det(A^n) = \det(A)^n$  
4. $\det(A^{-1}) = 1 / \det(A)$, if $A$ is invertible
5. determinant is equal to the product of eigenvalues(counting multiplicity) $\det(A)  = \prod_{i=1}^n{\lambda_i}$  
6. If the $i$-th row (column) in A is a sum of the $i$-th row (column) of a matrix $B$ and the $i$-th row (column) of a matrix $C$ and all other rows in $B$ and $C$ are equal to the corresponding rows in $A$ (that is $B$ and $C$ differ from $A$ by one row only), then $\det(A)=\det(B)+\det(C)$. This can be proven by cofactor expansion across the $i$th row. The same applies to columns. 

Row operations on $A$ has the following effect on $\det A$

- if we multiply a single row in $A$ by a scalar $k \in \mathbb{R}$, then the determinant of the new matrix is $k\det A$  

- if we exchange two rows $a_i^T$ and $a_j^T$ of $A$, determinant becomes $-\det A$ 

- Add a multiple of one row to another row has **no** effect on determinant 

The first two effects can be easily understood in connection with geometric meaning of determinant. As for the third one, let us represent A with row vectors

$$
A = 
\begin{vmatrix}
a_1^T \\ 
\vdots \\
a_i^T \\
\vdots \\
a_j^T \\ 
\vdots \\
a_n^T
\end{vmatrix}
$$
Then $B$, after performing replacing (add a multiple of the $j$th row to the $i$th row) on $A$, becomes  

$$
B = 
\begin{vmatrix}
a_1^T \\ 
\vdots \\
a_i^T + ka_j^T \\
\vdots \\
a_j^T \\ 
\vdots \\
a_n^T
\end{vmatrix}
$$
By property 6 $\det(A) = \det(B) + \det(C)$ when $B$ and $C$ only differs from $A$ by the same row. So $\det A$ can be broke down into two parts 

$$
|A| = 
\begin{vmatrix}
a_1^T \\ 
\vdots \\
a_i^T \\
\vdots \\
a_j^T \\ 
\vdots \\
a_n^T
\end{vmatrix} 
+ 
\begin{vmatrix}
a_1^T \\ 
\vdots \\
ka_j^T \\
\vdots \\
a_j^T \\ 
\vdots \\
a_n^T
\end{vmatrix} 
$$
The second matrix on the right side has determinant $0$, and $\det A$ stays the same after replacing. 

Note that all row operations don't change whether or not a determinant is 0, only change it by a non-zero factor or change its sign.  


### Cramer's rule

Given an $n \times n$ matrix $A$ and $\boldsymbol{b}$ in $\mathbb{\mathbb{R^n}}$, denote $A_i(\boldsymbol{b})$ as the matrix derived by $A$ by **replacing** column $i$ by vector $\boldsymbol{b}$:  

$$
A_i(\boldsymbol{b}) = [\boldsymbol{a}_1 \cdots \underbrace{\boldsymbol{b}}_{\text{column} \,i} \cdots \boldsymbol{a}_n]
$$

\BeginKnitrBlock{theorem}\iffalse{-91-67-114-97-109-101-114-39-115-32-114-117-108-101-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:cramer"><strong>(\#thm:cramer)  \iffalse (Cramer's rule) \fi{} </strong></span>Let $A$ be an invertible $n \times n$ matrix. For any $\boldsymbol{b}$ in $\mathbb{R^n}$, the unique solution $\boldsymbol{x}$ of $A\boldsymbol{x} = \boldsymbol{b}$ has entries given by: 

$$
x_i = \frac{\det A_i(\boldsymbol{b})}{\det A}
$$</div>\EndKnitrBlock{theorem}


## Trace


The *trace* of square matrix $A$ is the sum of its diagonal entries $\sum_{i = 1}^{n}A_{ii}$.  

The trace has the following properties:  

1. $\text{tr}(A + B) = \text{tr}A + \text{tr}B$  
2. $\text{tr}(kA) = k\text{tr}A$, $k$ is a scalar     
3. $\text{tr}(A^T) = \text{tr}(A)$  
4. For $A$, $B$ such that $AB$ is square, $\text{tr}(AB) = \text{tr}(BA)$  
5. Trace of product of multiple matrices is invariant to *cyclic permutations*, $\text{tr}(ABC) = \text{tr}(BCA) = \text{tr}(CAB)$. Note that the reordering cannot be done arbitrarily, fro example $\text{tr}(ABC) \not= \text{tr}(ACG)$ in general. 
6. Trace is equal to the sum of its eigenvalues (repeated accordin gto multiplicity) $\text{tr}(A) = \sum_{i = 1}^n{\lambda_i}$  
7. $\text{tr}(\boldsymbol{a}\boldsymbol{a}^T) = \boldsymbol{a}^T\boldsymbol{a}$, a is a column vector


## Inverse of a matrix

\BeginKnitrBlock{rmdnote}<div class="rmdnote">Note that the inverse of a matrix is only defined for square matrces, so is determinants in Section \@ref(determinants). 

In practice $A^{-1}$ is seldom computed, because computing both $A^{-1}$ and $A^{-1}\boldsymbol{b}$ to solve linear equations takes about 3 times as many arithmetic operations as solving $A\boldsymbol{x} = \boldsymbol{b}$ by row reduction.</div>\EndKnitrBlock{rmdnote}

Assume that $A$ and $B$ are both non-singular
\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-4"><strong>(\#thm:unnamed-chunk-4) </strong></span>If A and B are both invertible matrces, we have

$$
(A^{-1})^{-1} = A  
$$
  
$$
(AB)^{-1} = B^{-1}A^{-1}
$$

$$
(A^T)^{-1} = (A^{-1})^T
$$</div>\EndKnitrBlock{theorem}



In \@ref(thm:find-inverse), we know an algorithm of finding inverse matrices by row reducions on the augmented matrix $[A \;\; I]$. However, Cramer's rule \@ref(thm:cramer) leads to a general formula of calculating  $A^{-1}$, if it exists.  

The $j$th column of $A^{-1}$ is a vector $\boldsymbol{x}$ that satisfies:  

$$
A\boldsymbol{x} = \boldsymbol{e}_j
$$
By Cramer's rule 
$$
\{(i,j) \text{ entry of } A^{-1}\} = x_i = \frac{\det A_i{(\boldsymbol{e}_j)}}{\det A}
$$

A cofactor expansion \@ref(thm:cofactor-expansion) down column $i$ of $A_i{(\boldsymbol{e}_j)}$ shows that:   

$$
\det A_i{(\boldsymbol{e}_j)} = (-1)^{i + j}\det A_{ji} = C_{ji}
$$
where $C_{ji}$ is a cofactor of $A$. Note that the ($i$, $j$)th entry of $A^{-1}$ is the cofactor $C_{ji}$ divided by $\det A$ (the subscript is reversed). Thus


\begin{equation}
(\#eq:inverse-adjugate)
A^{-1} = \frac{1}{\det A} 
\begin{bmatrix}
C_{11} & C_{21} & \cdots & C_{n1} \\ 
C_{12} & C_{22} & \cdots & C_{n2} \\
\vdots & \vdots & & \vdots \\
C_{1n} & C_{2n} & \cdots & C_{nn} \\
\end{bmatrix}
\end{equation}

The right side of Eq \@ref(eq:inverse-adjugate) is called the *adjugate* of $A$, often denoted by $\text{adj}\, A$.  

\BeginKnitrBlock{theorem}\iffalse{-91-65-110-32-73-110-118-101-114-115-101-32-70-111-114-109-117-108-97-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-5"><strong>(\#thm:unnamed-chunk-5)  \iffalse (An Inverse Formula) \fi{} </strong></span>Let $A$ be an invertible $n \times n$ matrix. Then 

$$
A^{-1} = \frac{1}{\det A}\text{adj}\, A
$$</div>\EndKnitrBlock{theorem}


## Matrix multiplication as linear transformation

The equation $A_{m \times n} \, x _{ n \times 1} = b_{m \times 1}$ can arise in a way that is not directly connected with linear combination of column vectors. That is,  we think of the matrix $A$ as an force that “acts” on a vector $x$ in $\mathbb{R^n}$ by multiplication to produce a new vector called $b$ in $\mathbb{\mathbb{R^m}}$.  

A transformation $T$ from $\mathbb{R^n}$ to $\mathbb{R^m}$ is a rule that assigns each vector \boldsymbol{x} in $\mathbb{R^n}$ a vector $T(x)$ in $\mathbb{R^m}$, which is called the **image** of \boldsymbol{x} (under the action of $T$). 

It can be show that such transformations induced by multiplying a matrix is a type of **linear transformation**, because it satisfies all required properties to be linear:  

$$
\begin{aligned}
\text{vector addition} \quad A(\boldsymbol{u} + \boldsymbol{v}) &= A\boldsymbol{u} + A\boldsymbol{v}  \\ 
\text{scalar multiplication} \quad A(c\boldsymbol{u}) &= cA\boldsymbol{u}
\end{aligned}
$$
<hr>

\BeginKnitrBlock{theorem}\iffalse{-91-108-101-102-116-32-109-117-108-116-105-112-108-105-99-97-116-105-111-110-32-97-115-32-108-105-110-101-97-114-32-116-114-97-110-115-102-111-114-109-97-116-105-111-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-6"><strong>(\#thm:unnamed-chunk-6)  \iffalse (left multiplication as linear transformation) \fi{} </strong></span>There is a one to one relationship between a linear transformation and a matrix. Let $T: \mathbb{R^n} \rightarrow \mathbb{R^m}$ be a linear transformation. Then there exists a **unique** matrix $A$ such that:  
  
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

In other words, the transformation is specified once we know what all basis in $\mathbb{R^n}$ become in $\mathbb{R^m}$.

The matrix $A$ is called the **standard matrix for the linear transformation** $T$.  

<hr>

(ref:onto) A mapping is onto $\mathbb{R^m}$

\BeginKnitrBlock{definition}\iffalse{-91-40-114-101-102-58-111-110-116-111-41-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-7"><strong>(\#def:unnamed-chunk-7)  \iffalse ((ref:onto)) \fi{} </strong></span>A mapping $T: \mathbb{R^n} \rightarrow \mathbb{R^m}$ is said to be **onto** \mathbb{R^m} if each $\boldsymbol{b}$ in $\mathbb{R^m}$ is the image of at least one $\boldsymbol{x}$ in \mathbb{R^n}</div>\EndKnitrBlock{definition}

Equivalently, $T$ is onto $\mathbb{R^m}$ means that there exists at least one solution of $T(\boldsymbol{x}) = \boldsymbol{b}$

<br>

\BeginKnitrBlock{definition}\iffalse{-91-111-110-101-45-116-111-45-111-110-101-32-109-97-112-112-105-110-103-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-8"><strong>(\#def:unnamed-chunk-8)  \iffalse (one-to-one mapping) \fi{} </strong></span>A mapping T: $\mathbb{R^n} \rightarrow \mathbb{R^m}$ is said to be **one-to-one** if each $\boldsymbol{b}$ in $\mathbb{R^m}$ is the image of *at most* one $\boldsymbol{x}$ in $\mathbb{R^n}$</div>\EndKnitrBlock{definition}

Equivalently, $T$ is one-to-one if, for each $\boldsymbol{b}$ in $\mathbb{R^m}$, the equation $T(\boldsymbol{x}) = \boldsymbol{b}$ has either a unique solution or none at all.  

## Statistics and proabability


### Sample statistics

