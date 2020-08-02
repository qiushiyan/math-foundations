
# Solutions of linear system Ax = b

A linear system $A\boldsymbol{x} = \boldsymbol{b}$ when $\boldsymbol{b} \not = \boldsymbol{0}$ may behave in any one of three possible ways:

- The system has no solution. This occurs when $\boldsymbol{b} \not \in \mathcal{R}(A)$. In such cases we try to find *best fits* that meets certain optimization requirements.

- The system has a single unique solution. This occurs when $\boldsymbol{b} \in \mathcal{R}(A)$, and $A$ has linearly independent columns, then there exists an unique linear combination $a_1x_1 + \cdots + a_nx_n = \boldsymbol{b}$. In the special case when $A$ is square, the solution is simply $\boldsymbol{x} = A^{-1}\boldsymbol{b}$ 


- The system has infinitely many solutions. This is the case when $\boldsymbol{b} \in \mathcal{R}(A)$ and columns of $A$ are linearly dependent, with *free columns*. Any linear combination of current solutions would still satisfy $A\boldsymbol{x} = \boldsymbol{b}$

In the first scenario, the linear system is called **inconsistent** because there is no $\boldsymbol{x}$ that satisfies each equation in the system. Linear systems in the second and third scenario are called **consistent** because there is at least one solution.  


## Generalized inverse


## Ill-conditioned matrices 

### The condition number


$$
\delta x
$$
