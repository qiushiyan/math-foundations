
# Solutions of Linear System Ax = b {#linear-system}

A linear system $A\bar{x} = \bar{b}$ when $\bar{b} \not = \bar{0}$ may behave in any one of three possible ways:

- The system has no solution. This occurs when $\bar{b} \not \in \mathcal{R}(A)$. In such cases we try to find *best fits* that meets certain optimization requirements.

- The system has a single unique solution. This occurs when $\bar{b} \in \mathcal{R}(A)$, and $A$ has linearly independent columns, then there exists an unique linear combination $a_1x_1 + \cdots + a_nx_n = \bar{b}$. In the special case when $A$ is square, the solution is simply $\bar{x} = A^{-1}\bar{b}$ 


- The system has infinitely many solutions. This is the case when $\bar{b} \in \mathcal{R}(A)$ and columns of $A$ are linearly dependent, with *free columns*. Any linear combination of current solutions would still satisfy $A\bar{x} = \bar{b}$

In the first scenario, the linear system is called **inconsistent** because there is no $\bar{x}$ that satisfies each equation in the system. Linear systems in the second and third scenario are called **consistent** because there is at least one solution.  


## Generalized Inverse


## Ill-Conditioned Matrices 

### Condition Number


$$
\delta x
$$
