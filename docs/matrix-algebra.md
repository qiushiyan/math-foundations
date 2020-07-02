
# (PART) Linear Algebra {-}


# Matrix Algebra  



## Elemetary matrix and row operations  

For any $x^{T} = [x_1, ..., x_m]^T$ and matrix $A_{m \times n}$, $x^{T}A$ can be thought of as a linear combination of rows in $A$ to produce a new row vector: 

$$
[x_1, ..., x_m] 
\begin{bmatrix}
\boldsymbol{a}_1^T \\
\cdots  \\
\boldsymbol{a}_m^T
\end{bmatrix} 
= x_1\boldsymbol{a}_1^T + \dots + x_m\boldsymbol{a}_m^T
$$

An elementary matrix is one that is obtained by performing a single elementary row
operation on an identity matrix $I$. Each elementary matrix $E$ is invertible. The inverse of $E$ is the elementary matrix of the same type that transforms $E$ back into $I$.



## Arithmetic properties   

### Inverse of a matrix

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>If A and B are both invertible matrces, we have

$$
(AB)^{-1} = B^{-1}A^{-1}
$$

$$
(A^{-1})^{-1} = A  
$$
  

$$
(A^T)^{-1} = (A^{-1})^T
$$</div>\EndKnitrBlock{theorem}



## LU factorization 

A *factorization* a matrix A is an equation that expresses A as a product of two or more
matrices  

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

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>There is a one to one relationship between a linear transformation and a matrix. Let $T: R^n \rightarrow R^m$ be a linear transformation. Then there exists a **unique** matrix $A$ such that:  
  
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
&= A\boldsymbol{x}
\end{split}
$$

In other words, the transformation is specified once we know what all basis in $R^n$ become in $R^m$.

The matrix $A$ is called the **standard matrix for the linear transformation** $T$.

