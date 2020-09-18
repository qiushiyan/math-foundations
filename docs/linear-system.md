
# Solutions of Linear System Ax = b {#linear-system}

A linear system $Ax= b$ when $b = 0$ ^[For simplicity I exclude most $\bar{}$ sign for vector notation, lower case letters typically denote a vector unless there is a need for mixed usage of scalars and vectors] may behave in any one of three possible ways:

- The system has no solution. This occurs when $b \not \in \mathcal{R}(A)$. In such cases we try to find *best fits* that meets certain optimization requirements. For example, to make $\|Ax  - b\|$ as small as possible. Such a solution is called the *best fit*. 

- The system has a single unique solution. This occurs when $b \in \mathcal{R}(A)$, and $A$ has linearly independent columns, then there exists an unique linear combination $a_1x_1 + \cdots + a_nx_n = b$. In the special case when $A$ is square, the solution is simply $x = A^{-1}b$ 

- The system has infinitely many solutions. This is the case when $b \in \mathcal{R}(A)$ and columns of $A$ are linearly dependent, with *free columns*. Any linear combination of current solutions would still satisfy $Ax = b$. In this case, we want to make $\| x \|^2$ as small as possible. This is called the *conciseness criterion*.  

Moreover, suppose $b \not \in \mathcal{R}(A)$ which means rows and columns of $A$ are both linearly dependent. There are typically infinite many solutions that have the same optimal value in terms of $\|Ax  -b\|$

In the first scenario, the linear system is called **inconsistent** because there is no $x$ that satisfies each equation in the system. Linear systems in the second and third scenario are called **consistent** because there is at least one solution.  


## When A is square 

### Invertible A

The simplest case happens when $A$ is square and invertible, the unque solution of linear system $Ax = b$ is given by 

$$
x = A^{-1}b
$$

For square matrix $A$, the following criteria for invertibility are equivalent

- columns of $A$ are independent; the left null space is empty

- rows of $A$ are independent; the null space is empty

- $|A| \not = 0$  

- eigenvalues of $A$ are nonzero (singular values of $A$ are nonzero)

- $A$ is digonalizable

However, direct computation of $A^{-1}$ could be very hard especially when $A$ is large. Cramer's rule {\@ref(thm:cramer)}, or the general formula using $A^*$ mainly serve for theoretical purposes and come with prohibitive complexity. Therefore, we need more effective algorithm for finding $A^{-1}$


**Inverse via QR factorization**. In Section \@ref(qr-factorization), we show that a full rank square matrix $A$ can be factored into an orthogonal matrix $Q$ and an upper triangular matrix $R$ with positive diagonal entries. Hence $Q$ and $R$ are invertible, we have 

$$
\begin{aligned}
Ax &= b \\
QRx &= b \\
Rx &= Q^{-1}b = Q^Tb
\end{aligned}
$$
This means that to find the solution $x$, we need to solve the new linear system $Rx = Q^Tb$. The new coefficient matrix $R$ is upper triangular, let $Q^Tb$ be our new $b$, we write out the equations as 

$$
\begin{aligned}
R_{11}x_1 + R_{12}x_2 + \cdots + R_{1, n - 1}x_{n-1} + R_{1n}x_n   &= b_1 \\
R_{22}x_2 + \cdots + R_{2, n - 1}x_{n-1} + R_{2n}x_n   &= b_2 \\
& \vdots \\
R_{n-1, n -1}x_{n - 1} + R_{n - 1, n}x_{n} &= b_{n - 1} \\
R_{nn}x_n &= b_n
\end{aligned}
$$
If we move our eyes bottom-up, we immediately know $x_n = b_n / R_{nn}$. Substitute this into the second to last equation 

$$
x_{n - 1} = \frac{b_{n-1} - R_{n-1,n} b_n / R_{nn}}{R_{n-1,n-1}}
$$


It follows that there exists a efficient algorithm to find the solution $x$ in the order $x_n, x_{n - 1}, ..., x_2, x_1$, known as *back substitution*.  

\BeginKnitrBlock{algorithm}<div class="algorithm">**Back Substitution**
  
For the linear system $Rx = b$, where $R$ is an $n \times n$ upper triangular matrix with nonzero diagonal entries, the solution $x = [x_1, ..., x_n]$ are given by 


For $i = n, ..., 1$

$$
x_i = (b_i - R_{i, i + 1}x_{i + 1} - \cdots - R_{i, n}x_{n}) / R_{ii}
$$</div>\EndKnitrBlock{algorithm}



### Uninvertible A


## When A has independent columns or rows 



### Lesat Squares Problems 

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-2"><strong>(\#def:unnamed-chunk-2) </strong></span>the **normal equation** 
$$
A^TA\bar{x} = A^T\bar{b}
$$</div>\EndKnitrBlock{definition}

$$
\begin{aligned}
A^T(\bar{b} - A\hat{\bar{x}}) &= \bar{0}
\end{aligned} \\
A^T\bar{b} - A^TA\hat{\bar{x}} = 0 \\
\hat{\bar{x}} = (A^TA)^{-1}A^T\bar{b}
$$


### Left and Right Inverse


## Ill-Conditioned Matrices 

### Condition Number


$$
\delta x
$$
