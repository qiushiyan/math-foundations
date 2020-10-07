

# Principal Component Analysis

Notation

- $X$: $n \times p$ data matrix, i.e. $n$ is the sample size and $p$ is the number of variables  

- $S_X$: variance-covariance matrix of $X$



Motivation: The  goal of principal  component  analysis  is  to  identify  themost meaningful basis to re-express a data set.  The hope isthat this new basis will filter out the noise and reveal hidden structure. 


First centering $X$ by 

$$
X_c = X - \bar{X}
$$

where 

$$
\begin{split}
\bar{X} &= \frac{1}{n}\boldsymbol{1}_n\boldsymbol{1}^T_nX \\
&= \begin{bmatrix}
\frac{1}{n} & \cdots & \frac{1}{n} \\
\vdots & & \vdots \\
\frac{1}{n} & \cdots & \frac{1}{n}
\end{bmatrix}
\begin{bmatrix}
x_{11} & \cdots & x_{1p} \\
\vdots & & \vdots \\
x_{n1} & \cdots & x_{np}
\end{bmatrix} \\
&= 
\begin{bmatrix}
\bar{x}_1 & \bar{x}_2 & \cdots & \bar{x}_p \\
\bar{x}_1 & \bar{x}_2 & \cdots & \bar{x}_p \\
\vdots & \vdots & \ddots & \vdots \\
\bar{x}_1 & \bar{x}_2 & \cdots & \bar{x}_p 
\end{bmatrix}
\end{split}
$$

Then $S_X$, the sample variance-covariance matrix is 

$$
S_X = \frac{1}{n - 1}X_c^TX_c
$$



$$
\text{maximize} \quad \bar{u}^TS\bar{u} \\
\text{subject to} \quad \bar{u}^T\bar{u} = 1 
$$
This is a typical Rayleigh quotients with solution $\bar{u} = \bar{v}_1$ where $\bar{v}_1$ represents the eigenvector corresponding to the greatest eigenvalue of $S_X$. We can get obtain the same solution using largarange multiplier though. The objective function is: 


$$
J = \quad \bar{u}^TS\bar{u}  + \lambda(\bar{u}^T\bar{u} - 1) 
$$

Takek derivative to $\bar{u}$ and set it to zero 

$$
\frac{\partial \, J}{\partial \bar{u}} = 2\bar{u}^TS + 2\lambda \bar{u}^T = 0
$$

Since $S$ is symmetric, we get $S\bar{u} = -\lambda\bar{u}$. Therefore, the variance after projection onto $\bar{u}$ becomes $\bar{u}^TS\bar{u} = \lambda\bar{u}^T\bar{u} = \lambda$. 



### PCA with Normalization 


## Correspondence Analysis


$\chi^2$ distance is defined by 

