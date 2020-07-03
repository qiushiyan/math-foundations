
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

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>**Column-row expansion of $AB$**

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

### Inverse of a matrix

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>If A and B are both invertible matrces, we have

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

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-4"><strong>(\#def:unnamed-chunk-4) </strong></span>**LU factorization**
  
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





## 4 subspaces


## Matrix multiplication as linear transformation

The equation $A_{m \times n} \, x _{ n \times 1} = b_{m \times 1}$ can arise in a way that is not directly connected with linear combination of column vectors. That is,  we think of the matrix $A$ as an force that “acts” on a vector $x$ in $R^n$ by multiplication to produce a new vector called $b$ in $R^m$.  

A transformation $T$ from $R^n$ to $R^m$ is a rule that assigns each vector \boldsymbol{x} in $R^n$ a vector $T(x)$ in $R^m$, which is called the **image** of \boldsymbol{x} (under the action of $T$). 

It can be show that such transformations induced by multiplying a matrix is a type of **linear transformation**, because it satisfies all required properties to be linear:  

$$
\begin{aligned}
\text{vector addition} \quad A(\boldsymbol{u} + \boldsymbol{v}) &= A\boldsymbol{u} + A\boldsymbol{v}  \\ 
\text{scalar multiplication} \quad A(c\boldsymbol{u}) &= cA\boldsymbol{u}
\end{aligned}
$$
<hr>

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-5"><strong>(\#thm:unnamed-chunk-5) </strong></span>There is a one to one relationship between a linear transformation and a matrix. Let $T: R^n \rightarrow R^m$ be a linear transformation. Then there exists a **unique** matrix $A$ such that:  
  
$$
T(x) = Ax \quad \text{for all} \; x \; \text{in} \; R^n  
$$
  
In fact, $A$ is a $m \times n$ matrix whose $j$th column is the vector $T(\boldsymbol{e_j})$, where $\boldsymbol{e_j}$ is the $j$th basis of $R^n$ </div>\EndKnitrBlock{theorem}

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

In other words, the transformation is specified once we know what all basis in $R^n$ become in $R^m$.

The matrix $A$ is called the **standard matrix for the linear transformation** $T$.  

<hr>


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-6"><strong>(\#def:unnamed-chunk-6) </strong></span>**onto**

A mapping $T: R^n \rightarrow R^m$ is said to be **onto** R^m if each $\boldsymbol{b}$ in $R^m$ is the image of at least one $\boldsymbol{x}$ in R^n</div>\EndKnitrBlock{definition}

<br>

Equivalently, $T$ is onto $R^m$ means that there exists at least one solution of $T(\boldsymbol{x}) = \boldsymbol{b}$

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-7"><strong>(\#def:unnamed-chunk-7) </strong></span>**one-to-one mapping**

A mapping T: R^n \rightarrow R^m$ is said to be **one-to-one** if each $\boldsymbol{b}$ in $R^m$ is the image of *at most* one $\boldsymbol{x}$ in $R^n$</div>\EndKnitrBlock{definition}
<br>

Equivalently, $T$ is one-to-one if, for each $\boldsymbol{b}$ in $R^m$, the equation $T(\boldsymbol{x}) = \boldsymbol{b}$ has either a unique solution or none at all.

## Special matrices and their properties 

### Orthogonal matrices  

An *orthogonal matrix* is a square matrix whose inverse is its transpose:  

$$
(\#eq:orthogonal)
AA^T = A^TA = I
$$

Another way of defining it is that an orthogonal matrix has both **orthogonal columns** and **orthogonal rows**.
