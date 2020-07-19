
# Eigenthings and quadratic forms


## Eigenvectors and eigenvalues  

\BeginKnitrBlock{definition}\iffalse{-91-69-105-103-101-110-118-101-99-116-111-114-115-32-97-110-100-32-101-105-103-101-110-118-97-108-117-101-115-93-}\fi{}<div class="definition"><span class="definition" id="def:eigen"><strong>(\#def:eigen)  \iffalse (Eigenvectors and eigenvalues) \fi{} </strong></span>An **eigenvector** of an $n \times n$ matrix $A$ is a *nonzero* vector $\boldsymbol{x}$ such that $A\boldsymbol{x} = \lambda\boldsymbol{x}$. 

$\lambda$ is the **eigenvalue** of $A$ if there is a nontrivial solution $\boldsymbol{x}$ of $A\boldsymbol{x} = \lambda \boldsymbol{x}$; such an $\boldsymbol{x}$ is called an *eigenvector corresponding to $\lambda$*</div>\EndKnitrBlock{definition}

To find eigenvalues and corresponding eigenvectors of $A$, we look at the equation 

$$
(A - \lambda I)\boldsymbol{x}= 0
$$

Since eigenvector $\boldsymbol{x}$ must be nonzero, $(A - \lambda I)$ is a singular matrix 


\begin{equation}
(\#eq:characteristic-equation)
\det (A - \lambda I) = 0
\end{equation}

Eq \@ref(eq:characteristic-equation) is called the **characteristic equation** of matrix $A$. This is a scalar equation containing information about eigenvalues and eigenvectors of a square matrix $A$. 



\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>Eigenvalues of a trangular matrix are its diagonal entries.</div>\EndKnitrBlock{theorem}


**PROOF**  

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

1. For any $k, b \in \mathbb{R}$, $\boldsymbol{x}$ is an eigenvector of $kA + bI$ with eigenvalue $k\lambda + b$  

**PROOF**
$$
(kA + bI)\boldsymbol{x} = kA\boldsymbol{x} + bI\boldsymbol{x} = k \lambda\boldsymbol{x} + b\boldsymbol{x} = (k\lambda + b)\boldsymbol{x} 
$$


2, If $A$ is invertible, then $\boldsymbol{x}$ is an eigenvector of $A^{-1}$ with eigenvalue $1/\lambda$  

**PROOF**

$$
\boldsymbol{x} = A^{-1}A\boldsymbol{x} =  A^{-1}\lambda \boldsymbol{x} = \lambda A^{-1}\boldsymbol{x}
$$
3. $A^{k}\boldsymbol{x} = \lambda^{k}\boldsymbol{x}$ 


The next theorem is important in terms of diagonalization and spectral decomposition

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:distinct-eigenvalue"><strong>(\#thm:distinct-eigenvalue) </strong></span>For distinct eigenvalues $\lambda_1, \cdots, \lambda_r$ of an $n \times n$ matrix A, their corresponding eigenvectors $\boldsymbol{v_1}, ..., \boldsymbol{v_r}$ are linearly independent. </div>\EndKnitrBlock{theorem}

**PROOF**  

Suppose for r distinct eigenvalue  $\lambda_1, \cdots, \lambda_r$, the set $\{\boldsymbol{v_1}, ..., \boldsymbol{v_r}\}$ is not linearly independent, and $p$ is the least index such that $\boldsymbol{v}_{p+1}$ is a linear combination of the preceding vectors. Then there exists scalars $c_1, \cdots, c_p$ such that

$$
c_1\boldsymbol{v}_1 + \cdots + c_p\boldsymbol{v}_p = \boldsymbol{v}_{p+1} \tag{1}
$$
Left multiply by $A$, and note we have $A\boldsymbol{v}_i = \lambda_i\boldsymbol{v}_i$ for $i = 1, ..., n$ 

$$
c_1\lambda_1\boldsymbol{v}_1 + \cdots + c_p\lambda_p\boldsymbol{v}_p = \lambda_{p+1}\boldsymbol{v}_{p+1} \tag{2}
$$
Multiplying both sides of (2) by $\lambda_{p+1}$ and subtracting (2) from the result 

$$
c_1(\lambda_1 - \lambda_{p+1})\boldsymbol{v}_1 +\cdots + c_p(\lambda_p - \lambda_{p+1})\boldsymbol{v}_p = 0 \tag{3}
$$
Since $\boldsymbol{v}_1, ..., \boldsymbol{v}_p$ are linearly independent,  weights in (3) must be all zero. Since $\lambda_1, \cdots, \lambda_p$ are distinct, hence $c_i = 0, \, i = 1, ..., p$. But then (5) says that eigenvector $\boldsymbol{v}_{p+1}$ is zero vector, which contradicts definition \@ref(def:eigen) 

## Diagnolization and similar matrices 


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-2"><strong>(\#def:unnamed-chunk-2) </strong></span>**Diagonalization theorem** 
  
An $n \ times n$ matrix $A$ is diagnolizable **if and only if** A has $n$ independent linearly independent eigenvectors. 

In such case, in $A = PDP^{-1}$, the diagonal entries of $D$ are eigenvalues that correpond, respectively, to the eigenvectors of in $P$  
  
In other words, $A$ is diagnolizable if and only if there are enough eigenvectors in form a basis of $R^n$, called an **eigenvector basis** of $R^n$ </div>\EndKnitrBlock{definition}

**Proof** 

$$
\begin{split}
AP &= A[\boldsymbol{v}_1 \cdots \boldsymbol{v}_n] \\
   &= [A\boldsymbol{v}_1 \cdots A\boldsymbol{v}_n] \\ 
   &= [\lambda_1\boldsymbol{v}_1 \cdots \lambda_n\boldsymbol{v}_n]
\end{split}
$$
while on the other side of the equation:  

$$
\begin{aligned}
DP &= 
[\boldsymbol{v}_1 \cdots \boldsymbol{v}_n]
\begin{bmatrix}
\lambda_1 & 0 & \cdots & 0\\
0  & \lambda_2 & \cdots & 0 \\
\vdots & \vdots & & \vdots \\
0 & 0 & \cdots & \lambda_n 
\end{bmatrix} 
 \\
&= [\lambda_1\boldsymbol{v}_1 \cdots \lambda_n\boldsymbol{v}_n]
\end{aligned}
$$

So that 

$$
\begin{aligned}
AP &= PD \\
A &= PDP^{-1}
\end{aligned}
$$
Because $P$ contains $n$ independent columns so it's invertible.  

According to theorem \@ref(thm:distinct-eigenvalue), an $n \times n$ matrix with $n$ distinct eigenvalues is diagonalizable. This is a sufficient condition. 

For matrices whose eigenvalues are not distinct, there is still a change that it is diagonalizable. For any matrix $A_{n\times n}$, as long as the sum of the dimensions of the eigenspaces equals $n$ then $P$ is invertible. This could happen in the following two scenarios

1. The characteristic polynomial factors completely into linear factors. This is the case when $A$ has n distinct eigenvalues. 

2. The dimension of the eigenspace for each $\lambda_k$ equals the multiplicity of $\lambda_k$. Thus $A$ with repeated eigenvalues can still be diagonalizable. 



## Symmetric matrices 


## SVD
