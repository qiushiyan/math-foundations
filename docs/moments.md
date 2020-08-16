
# Random variables and moments 

## Properties of expectation and variance 



\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:mean-square-expectation"><strong>(\#lem:mean-square-expectation) </strong></span>
The fact that $\text{E}(X^2) = \text{Var}(X) + \mu^2$ is a special case of the following identity


$$
E(X  - c)^2 = \text{Var}(X) + (\mu - c)^2
$$
  
where $c = 0$</div>\EndKnitrBlock{lemma}


**PROOF**

Use the fact that variance is not affected when adding a constant 

$$
\begin{split}
\text{Var}(X) &= \text{Var}(X - c) \\
&= E(X - c)^2 - (E(X - c))^2 \\ 
&= E(X - c)^2 - (\mu - c)^2
\end{split}
$$


## Other summaries of distribution of random variables 

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-1"><strong>(\#thm:unnamed-chunk-1) </strong></span>Let $X$ be an r.v. with expectation $E(X) = \mu$, and let $m$ be the median of $X$  

- The value of $c$ that minimizes the mean squared error $E(X - c)^2$ is $c = \mu$  

- The value of $c$ that minimizes the mean absolute error $E |X - c|$ is $c = m$ </div>\EndKnitrBlock{theorem}


**PROOF**  

In the case of mean squared error, we have $E(X - c)^2 = \text{Var}(X) + (\mu - c)^2$ according to lemma \@ref(lem:mean-square-expectation). Therefore, the quantity is minimized when $c = \mu$.  

As for the mean absolute error, we need to show that $E|X - m| \le E |X - a|$ for any $a$, which is equivalent to $E(|X - a| - |X - m|) \ge 0$. Assume $m < a$  without loss of generality, if $X \le m$ then 

$$
|X - a| -|X - m| = a-m
$$


and if $X > m$ 

$$
|X - a| - |X - m| \ge X - a - (X- m) = m -a
$$

Let 

$$
Y  = |X - a| - |X - m|
$$

When can split $E(Y)$ into two parts based on whether the event $X \le m$ occurs 

$$
\begin{split}
E(Y) &= E(Y | X \le m)P(X \le m) +E(Y | X > m)P(X \gt m) \\
&\ge (a - m)P(X \le m) + (m - a)P(X > m) \\
&= (a-m)P(X \le m) - (a - m)(1 - P(X \le m)) \\
&= (a - m)(2P(X \le m) - 1)
\end{split}
$$
Since for median $m$ we know $P(X \le m) \le \frac{1}{2}$, we get $E(Y) \ge 0$ with equality when $a = m$. This means the mean absolute error $E|X - a|$ is minimized when $a$ is the median of $X$. 
