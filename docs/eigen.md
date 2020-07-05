
# Eigenvalues and and eigenvectors




## Diagnolization 


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>**Diagonalization theorem** 
  
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


## Eigenvectors and linear transformations
