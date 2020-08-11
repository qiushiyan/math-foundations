
# Matrix calculus  


> Matrix calculus refers to a number of different notations that use matrices and vectors to collect the derivative of each component of the dependent variable with respect to each component of the independent variable. 

$$
\frac{\partial{f(x)}}{\partial{x}} 
$$


Differentiate a scalar by a vector. 

$$
\frac{\partial f(x_1, ..., x_n)}{\partial (x_1, ..., x_n)}
= 
\begin{bmatrix}
\frac{\partial f}{\partial x_1} & \cdots & \frac{\partial f}{\partial x_n}
\end{bmatrix}
$$

One important thing here is we define the gradient of $f(x_1, ..., x_n)$ to be a **row vector**. This is also called the *numerator layout*, as opposed the *denominator* layout where gradient is defined as a row vector.  


Next, we come to cases when we differentiate a vector by a vector (i.e., the gradient of a vector-valued function). The function $\bar{f}: \mathbb{R}^n \rightarrow \mathbb{R}^m$ takes a $n$-dimensional vector $\bar{x} = [x_1, ..., x_n]$ as input, and output a $m$-dimensional vector. The corresponding vector of function value is given as  

$$
\bar{f}(\bar{x}) = 
\begin{bmatrix}
f_1(\bar{x}) \\
\vdots \\
f_m(\bar{x})
\end{bmatrix}
$$
In this way, we think of a vector-valued function $\bar{f}$, as a vector of functions $[f_1, ..., f_m]^T, \; f_i: \mathbb{R}^n \rightarrow \mathbb{R}$. Thus, the partial derivative of $f_i$ with respect vector of $\bar{x}$ is a gradient 

$$
\frac{\partial f_i}{\partial \bar{x}} =
\begin{bmatrix}
\frac{\partial f_i}{\partial x_1} & \cdots & \frac{\partial f_i}{\partial x_n}
\end{bmatrix}
$$

Further, the partial derivative of $\bar{f}$ with respect to scalar $x_i, \; i = 1,...,n$ is simply a column vector of partial derivatives $\frac{\partial \bar{f}_j}{\partial x_i}$  

$$
\frac{\partial \bar{f}(\bar{x})}{\partial x_i} = 
\begin{bmatrix}
\frac{\partial f_1 }{\partial x_i} \\
\vdots \\
\frac{\partial f_m }{\partial x_i}
\end{bmatrix} 
= 
\begin{bmatrix}
\lim _{h \to \infty}\frac{f_1(x_1, ..., x_i + h, ..., x_n)}{h} \\
\vdots \\
\lim _{h \to \infty}\frac{f_m(x_1, ..., x_i + h, ..., x_n)}{h} 
\end{bmatrix}
$$

We obtain the "full" gradient of $\bar{f}$ with respect of $\bar{x}$. 


\BeginKnitrBlock{definition}\iffalse{-91-74-97-99-111-98-105-97-110-93-}\fi{}<div class="definition"><span class="definition" id="def:jacobian"><strong>(\#def:jacobian)  \iffalse (Jacobian) \fi{} </strong></span>$$
\begin{split}
J = \nabla_x \bar{f} &=
\begin{bmatrix}
\frac{\partial \bar{f}}{\partial x_1} 
& \cdots 
&\frac{\partial \bar{f}}{\partial x_n}
\end{bmatrix}
&=
\begin{bmatrix}
\frac{\partial f_1}{\partial x_1} & \cdots & \frac{\partial f_1}{\partial x_n} \\
\vdots & & \vdots \\ 
\frac{\partial f_m}{\partial x_1} & \cdots & \frac{\partial f_m}{\partial x_n}
\end{bmatrix}
\end{split}
$$</div>\EndKnitrBlock{definition}

## Useful identities in matirx calculus 

Assuming $A$ is a $m \times n$ matrix and $\bar{w}$ an $n \times 1$ column vector, and let others be of comforbale sizes,  we adopt the numerator layout to show some commonly used identities in matrix calculus. 

|Derivative of|with respect to|output size|result|
:-:|:-:|:-:|:-:|
|$A\bar{w}$|$\bar{w}$|matrix $m \times n$|$A$|
|$\bar{a}^T\bar{w}$ <br> $\bar{w}^T\bar{a}$|$\bar{w}$|row vector $1 \times n$|$\bar{a}^T$|
|$\bar{b}^TB\bar{w}$ <br> $\bar{w}^TB^T\bar{b}$|$\bar{w}$|row vector $1 \times n$|$\bar{b}^TB$|
|$\bar{w}^TA\bar{w}$|$\bar{w}$|row vector $1 \times n$|$\bar{w}^T(A + A^T)$ <br> if $A$ is symmetric $2\bar{w}^TA$|
|$\bar{w}^T\bar{w}$|$\bar{w}$|row vector $1 \times n$|$2\bar{w}^T$|
|$\bar{f}(X)^T$|$X$|-|$\Big (\frac{\partial \bar{f}(X)}{\partial X}\Big )^T$|






The major **downside** of using the numerator layout is that, since we define gradient to be a row vector,  we have to constantly transpose the gradient into a column vector in order to perform gradient descent updates on the column vector $\bar{w}$. In other words, we have to write the update in matrix calculus notation as follows:

$$
\bar{w} \Leftarrow \bar{w}- \alpha \cdot (\nabla L)^T 
$$
where $\nabla L$ is the gradient of loss function $L$. 






