
# (PART) Optimization {-}

# Basics of optimization 


## Univariate optimization 

\BeginKnitrBlock{theorem}\iffalse{-91-83-101-99-111-110-100-32-100-101-114-105-118-97-116-105-118-101-32-116-101-115-116-32-102-111-114-32-108-111-99-97-108-32-101-120-116-114-101-109-97-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:second-derivative"><strong>(\#thm:second-derivative)  \iffalse (Second derivative test for local extrema) \fi{} </strong></span>

Suppose $f''(x)$ is continuous on an open interval that contains $x = c$  

1. If $f'(c) = 0$ and $f''(c) > 0$, then $f(x)$ has a local minimum at $x = c$  

2. If $f'(c) = 0$ and $f''(c) < 0$, then $f(x)$ has a local maximum at $x = c$  

3. If $f'(c) = 0$ and $f''(c) = 0$, the the test fails. $f(x)$ my have a local maximum, a local minimum, or neither </div>\EndKnitrBlock{theorem}






## Multivariate optimization 


## Convex functions 

\BeginKnitrBlock{definition}\iffalse{-91-67-111-110-118-101-120-116-32-115-101-116-93-}\fi{}<div class="definition"><span class="definition" id="def:convex-set"><strong>(\#def:convex-set)  \iffalse (Convext set) \fi{} </strong></span>
A set $S$ is said to be convex, if for every pair of points $\bar{w}_1, \bar{w}_2 \in S$, point $\lambda\bar{w}_1 + (1 - \lambda)\bar{w}_2$ must also be in $S$ for all $\lambda \in (0, 1)$ </div>\EndKnitrBlock{definition}

Intuitively, convexity means if we connect $\bar{w}_1, \bar{w}_2$ with a straight line, then all points along the line must be in set $S$. For example, an open interval $(a, b)$ on the 1-dimensional number line is a convex set. 


```r
knitr::include_graphics("images/convex-set.png")
```

<img src="images/convex-set.png" width="232" style="display: block; margin: auto;" />

An property of convex set $S$ is that, given $r$ points $\bar{w}_1, ..., \bar{w}_r$ and $r$ nonnegative numbers $\lambda_1, ..., \lambda_r$ such that $\lambda_1 + \cdots + \lambda_r = 1$ ,the affine combination 

$$
\sum _{i=1}^r\lambda_i\bar{w}_k
$$
belongs to $s$. As the definition of a convex set is the case $r = 2$, this property characterizes convex sets. 

\BeginKnitrBlock{definition}\iffalse{-91-67-111-110-118-101-120-32-102-117-110-99-116-105-111-110-93-}\fi{}<div class="definition"><span class="definition" id="def:convex-function"><strong>(\#def:convex-function)  \iffalse (Convex function) \fi{} </strong></span>
Let $f(\cdot)$ be a real-valued function with a convex domain, so that if $f(\bar{w}_1), f(\bar{w}_2)$ is defined, for any $\lambda \in (0, 1)$, the expression $f\big( \lambda\bar{w}_1 + (1- \lambda)\bar{w}_2\big)$ is defined. For any $\lambda \in (0, 1)$ and $\bar{w}_1, \bar{w}_2$

- $f$ is called **convex** if 

$$
f\big(\lambda\bar{w}_1 + (1 - \lambda)\bar{w}_2\big) \le \lambda f(\bar{w}_1) + (1-\lambda)f(\bar{w}_2)
$$

- $f$ is called **strictly convex** if 

$$
f\big(\lambda\bar{w}_1 + (1 - \lambda)\bar{w}_2\big) \lt \lambda f(\bar{w}_1) + (1-\lambda)f(\bar{w}_2)
$$</div>\EndKnitrBlock{definition}




## Lagrange multipliers


