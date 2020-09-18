# Taylor Series








$$
L(x, y) = f(x_0, y_0) + f_x(x_0, y_0)(x - x_0) + f_y(x_0, y_0)(y - y_0)
$$

The approximation

$$
f(x, y) \approx L(x, y)
$$

is called the **standard linear approximation** of $f$ at $(x_0, y_0)$ 

If $M$ is the upper bound of $|f_{xx}|$, $|f_{yy}|$ and $|f_{xy}|$

$$
\text{error of linearization} \le \frac{1}{2}M(|x - x_0|^2 - |y - y_0|^2)
$$

## Convergence of Taylor Series


## Taylor Approximation of Multivariate Functions



$$
\boldsymbol{f}(\bar{x}) = 
\begin{bmatrix}
f_1(\bar{x}) \\
\vdots \\
f_m(\bar{x})
\end{bmatrix}
$$
We begin by asking for the first order univariate taylor approximation of a certain individual component $f_i(\bar{x})$ of $\boldsymbol{f}(\bar{x})$, near $\bar{a} = [a_1, ..., a_n]$

$$
f_i(\bar{x}) \approx f_i(\bar{a}) + \frac{\partial f_i}{\partial x_1}(\bar{a}) f_i(x_1 - a_1) + \frac{\partial f_i}{\partial x_2}(\bar{a}) f_i(x_2 - a_2) + \cdots + \frac{\partial f_i}{\partial x_n}(\bar{a}) f_i(x_n - a_n)
$$
Or use the vector form 

$$
f_i(\bar{x}) \approx  f_i(\bar{a}) + \nabla f_i(z)(\bar{x} - \bar{a})
$$

Therefore

$$
\boldsymbol{f}(\bar{x}) \approx
\begin{bmatrix}
f_1({\bar{a}}) \\
\vdots \\
f_m({\bar{a}})
\end{bmatrix}
+ 
\begin{bmatrix}
\nabla f_1 (\bar{a}) \\
\vdots \\
\nabla f_m (\bar{a})
\end{bmatrix}
(\bar{x} - \bar{a})
= \boldsymbol{f}(\bar{a}) + \nabla\boldsymbol{f}(\bar{a})(\bar{x} - \bar{a})
$$

where $\nabla\boldsymbol{f}(\bar{a})$ is the Jacobian (Definition \@ref(def:jacobian)) of vector-valued function $\boldsymbol{f}$ evaluated at $\bar{a}$. 

