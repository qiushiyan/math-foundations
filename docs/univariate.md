# Univariate distributions 

## Uniform distribution 

$$
f_X(x) = 
\begin{cases}
\frac{1}{a - b} & a \le x \le b \\
0  & \text{otherwise}
\end{cases}
$$

## Normal distribution 

### Log normal distribution 



## Binomial distribution 



## Poisson distribution 

$$
P(X = x) = \frac{\lambda ^x e^{-\lambda}}{x!}
$$

### Poisson process


## Exponential distribution 

The exponential distribution describes the length of time between occurrences, and can be derived directly from poisson distribution. Given a poisson random variable $X \sim \text{Poisson}(\lambda)$, we compute the probability of the time $T$ to the first occurence is greater than $t$ 

$$
P(T > t) = P(X = 0; \lambda t) = e^{-\lambda t}
$$
Note that poisson distribution of $X$ is paramterized by $\lambdat $ this time. This is because in a poisson process, if events occur on a average at the rate of $\lambda$ per unit of time, then there will be on average $\lambda t$ occurrences per $t$ units of time. 

Conversely, the probability that an event does occur during $t$ units of time is given by 

$$
P(T \le t) = 1 - e^{-\lambda t}
$$
The pdf of $T$ is the derivative of $P(T \le t)$ 

$$
f(T) = \lambda e^{-\lambda t}
$$
After notation changes $T \rightarrow X$, we conclude that a nonnegative random variable $X$ has the exponential distribution with parameter $\lambda > 0$ if it has pdf 

$$
f(X) = -\lambda e^{\lambda x}
$$
$X$ is denoted 

$$
X \sim \text{Exp}(\lambda)
$$



$$
E(X) = \frac{1}{\lambda} \\
\text{Var}(X) = \frac{1}{\lambda^2}
$$

## Gamma distribution 



The gamma distribution can be parameterized in terms of a shape parameter $\alpha$ and an rate parameter $\beta$. 

When $\alpha$ is a positive integer, the Gamma distribution describes the the sum of $\alpha$ independent exponentially distributed random variables, each of which has a mean of $1/\beta$. 

A random variable $X$ that is gamma-distributed with shape $\alpha$ and rate $\beta$ has pdf 

$$
f(x) = \frac{\beta^\alpha x^{\alpha - 1}e^{-\beta x}}{\Gamma (\alpha)} \qquad 
$$
More on Gamma function (denominator). ^[
The Gamma function $\Gamma$ is one commonly used extension of the factorial function to complex numbers. For positive integer $n$, $\Gamma(n) = (n - 1)!$. 
For complex numbers with a positive real part the gamma function is defined via a convergent improper integral
$$\Gamma(z)  = \int_{0}^{\infty}x^{z -1}e^{-x} dx$$]

$X$ is denoted 

$$
X \sim \Gamma(\alpha, \beta) \equiv \text{Gamma}(\alpha, \beta)
$$




## Inverse Gamma distribution 


## Beta distribution 
