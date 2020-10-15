# Solutions of Linear System Ax = b {#linear-system}

This chapter will be the climax of our first big part of linear algebra, integrating many important theoretical concepts and computational considerations altogether. This chapter will also touch on some fundamental topics in numerical linear algebra. As far as applications in statistics and machine learning are concerned, theory of linear systems lay foundations for linear models and its generalizations. With this foundation we can shift the emphasis in Chapter \@ref(linear-models) towards statistical inference and other practical problems, instead of the procedure of data fitting.

A linear system $Ax= b$ when $b \not = 0$ [^linear-system-1] may behave in any one of three possible ways:

[^linear-system-1]: For simplicity I exclude most $\bar{}$ sign for vector notation, lower case letters typically denote a vector unless there is a need for mixed usage of scalars and vectors

-   The system has a single unique solution. This occurs when $b \in \mathcal{R}(A)$, and $A$ has linearly independent columns, then there exists an unique linear combination $a_1x_1 + \cdots + a_nx_n = b$. In the special case when $A$ is square, the solution is simply $x = A^{-1}b$. In this case, we are most concerned with how to ensure speed and accuracy of computing such a solution. And we hardly compute $A^{-1}$ directly.

-   The system has infinitely many solutions. This is the case when $b \in \mathcal{R}(A)$ and columns of $A$ are linearly dependent, with *free columns*. Any linear combination of current solutions would still satisfy $Ax = b$. In this case, we want to make $\| x \|^2$ as small as possible. This is called the *conciseness criterion*.

-   The system has no solution. This occurs when $b \not \in \mathcal{R}(A)$. This is the most common case for linear models in statistics. More often than not we seek to find optimal solution with some satisfactory property, tailored to . For example, a best fit solution to make $\|Ax - b\|$ as small as possible. Such a solution is called the *best fit*.

In the last scenario, the linear system is called **inconsistent** because there is no $x$ that satisfies each equation in the system. Linear systems in the first and second scenario are called **consistent** because there is at least one solution.

## When A Has Independent Columns or Rows

### When A is square

The best and simplest case happens when $A$ is square and has independent columns and rows: this means $A$ is invertible. Then we can conclude that the linear system has one unique solution $x$ such that $Ax = b$, which is given by

$$
x = A^{-1}b
$$

For square matrix $A$, the following criteria for invertibility are equivalent

-   columns of $A$ are independent; the left null space is empty

-   rows of $A$ are independent; the null space is empty

-   $|A| \not = 0$

-   eigenvalues of $A$ are nonzero (singular values of $A$ are nonzero)

-   $A$ is digonalizable

### When m \> n: Lesat Squares

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>the **normal equation** 
$$
A^TAx = A^Tb
$$</div>\EndKnitrBlock{definition}

$$
\begin{aligned}
A^T(b - A\hat{x}) &= \bar{0}
\end{aligned} \\
A^Tb - A^TA\hat{x} = 0 \\
\hat{x} = (A^TA)^{-1}A^Tb
$$

### When m \< n: Least Norms

## Otherwise

When $A$ has not independent columns nor rows, both $(A^TA)$ and $(AA^T)$ are not invertible, defying both the least squares and least norms solution.

minimize

$$
\underbrace{\|Ax - b\|^2}_{\text{best fit}} + \underbrace{\lambda \| x\|^2}_{\text{concise}}
$$

$\|Ax - b\|^2 + \lambda \| x\|^2$ is equivalent to $\frac{1}{2}(Ax - b)^T(Ax - b) + \frac{\lambda}{2}x^Tx$

$$
\begin{aligned}
A^TAx^T - b^TA + \lambda x^T = 0\\
(A^TA +\lambda I)x = A^Tb
\end{aligned}
$$

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>The least squares solution of smallest norm of the linear system $Ax = b$, when $A$ is any $m \times n$ matrix, is given by 

$$
x^{+} = A^{+}b = U \Sigma^{+} V^Tb
$$</div>\EndKnitrBlock{theorem}

## Ill-Conditioned Matrices

### Condition Number

$$
\frac{\| \delta x\|}{\| x\|} \le \kappa(A) \frac{\| \delta b \|}{\| b\|}
$$

If we decide to use the L2 norm of a matrix, we have

$$
\kappa_2(A) = \| A \|_2 \| A^{-1} \|_2 = \frac{\sigma_1}{\sigma_r}
$$
