
# Orthogonality 

Some definitions:  

If $\boldsymbol{u}$ and $\boldsymbol{v}$ and both vectors in $R^n$, then the number $\boldsymbol{u}^T\boldsymbol{v}$ is called the **inner product** of $\boldsymbol{u}$ and $\boldsymbol{v}$, also denoted by $\langle\boldsymbol{u}, \boldsymbol{v}\rangle$ or $\boldsymbol{u} \cdot \boldsymbol{v}$.  

**Norm** is a function from a vector space to a nonnegative scalar that satisfies certain properties. 

The L2 norm (most common measure of length of a vector) of $\boldsymbol{v}$ is  $||\boldsymbol{u}||$ defined by 

$$
||\boldsymbol{v}||_2 = \sqrt{v_1^2 + \cdots + v_n^2} = \sqrt{\boldsymbol{v}^T\boldsymbol{v}}
$$
The subscript $2$ can be left out in most cases.

On the other hand, the L1 norm of $\boldsymbol{v}$ is 

$$
||\boldsymbol{v}||_1 = |v_1| + \cdots + |v_n|
$$

More generally, the Lp norm is: 

$$
||\boldsymbol{v}||_p = (\sum_{i = 1}^n{x_i^p})^{1/p}
$$

For all these definitions, it can be shown that 

$$
||c\boldsymbol{v}|| = |c| \times ||\boldsymbol{v}||
$$

The **Euclidean distance** between $\boldsymbol{u}$ and $\boldsymbol{v}$ is the L2 norm of the vector $\boldsymbol{u} - \boldsymbol{v}$  

$$
\text{dist}(\boldsymbol{u}, \boldsymbol{v}) = ||\boldsymbol{u} - \boldsymbol{v}||_2
$$

## Orthogonal projection and projection matrices
