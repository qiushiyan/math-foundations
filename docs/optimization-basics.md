
# (PART) Optimization {-}

# Basics of Optimization 


## Univariate Optimization 

\BeginKnitrBlock{theorem}\iffalse{-91-83-101-99-111-110-100-32-100-101-114-105-118-97-116-105-118-101-32-116-101-115-116-32-102-111-114-32-108-111-99-97-108-32-101-120-116-114-101-109-97-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:second-derivative"><strong>(\#thm:second-derivative)  \iffalse (Second derivative test for local extrema) \fi{} </strong></span>

Suppose $f''(x)$ is continuous on an open interval that contains $x = c$  

1. If $f'(c) = 0$ and $f''(c) > 0$, then $f(x)$ has a local minimum at $x = c$  

2. If $f'(c) = 0$ and $f''(c) < 0$, then $f(x)$ has a local maximum at $x = c$  

3. If $f'(c) = 0$ and $f''(c) = 0$, the the test fails. $f(x)$ my have a local maximum, a local minimum, or neither </div>\EndKnitrBlock{theorem}






## Multivariate Optimization 


### ## Method of Lagrange Multiplier

## Convexity





\BeginKnitrBlock{definition}\iffalse{-91-67-111-110-118-101-120-116-32-115-101-116-93-}\fi{}<div class="definition"><span class="definition" id="def:convex-set"><strong>(\#def:convex-set)  \iffalse (Convext set) \fi{} </strong></span>
A set $S$ is said to be convex, if for every pair of points $\bar{w}_1, \bar{w}_2 \in S$, point $\lambda\bar{w}_1 + (1 - \lambda)\bar{w}_2$ must also be in $S$ for all $\lambda \in (0, 1)$ </div>\EndKnitrBlock{definition}

Intuitively, convexity means if we connect $\bar{w}_1, \bar{w}_2$ with a straight line, then all points along the line must be in set $S$. For example, an open interval $(a, b)$ on the 1-dimensional number line is a convex set. 

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


Another more intuitive definition can be expressed as 

> $f$ is a convex function if its epigrah (the set of points lying on or above its graph) is a convex set. 


<div class="figure" style="text-align: center">
<img src="images/epigraph_convex.svg" alt="A function is convex if and only if the region above its graph (in green) is a convex set. This region is the function's epigraph."  />
<p class="caption">(\#fig:unnamed-chunk-2)A function is convex if and only if the region above its graph (in green) is a convex set. This region is the function's epigraph.</p>
</div>



Most often in machine learning problems we encountered a subset of optimization problems, *convex optimization*. That is 

$$
\text{minimize} \quad f(\bar{w}) \\
\text{subject to} \quad x \in C
$$
where $f:\mathbb{R}^n \to \mathbb{R}$ is a convex function and $C$ is a closed convex set.  


### Properties of Convex Functions 

\BeginKnitrBlock{theorem}\iffalse{-91-74-101-110-115-111-110-39-115-32-105-110-101-113-117-97-108-105-116-121-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:jensen-inequality"><strong>(\#thm:jensen-inequality)  \iffalse (Jenson's inequality) \fi{} </strong></span>If $X$ is a random variable and $f$ is a convex function, then 

$$
E\big[f(X)\big] \ge f\big[E(X)\big]
$$
I find this very intuitive figure from https://www.bowaggoner.com/ to remember this formula</div>\EndKnitrBlock{theorem}



<img src="images/jenson-inequality.png" width="120%" style="display: block; margin: auto;" />



