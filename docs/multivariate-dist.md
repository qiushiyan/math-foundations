# Multivariate Distributions 




## Multivariate Normal Distribution 





\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-1"><strong>(\#cor:unnamed-chunk-1) </strong></span>If $\boldsymbol{Y} \sim N(\boldsymbol{0}, \sigma^ 2I)$, and $Q$ is an orthogonal matrix, then $Q^T\boldsymbol{Y}$ still follows multivariate normal distribution with mean $\boldsymbol{0}$ and variance-covariance matrix $\sigma^2 I$


$$
\mathbb{E}(Q^T\boldsymbol{Y}) = Q^T\mathbb{E}(\boldsymbol{Y}) = \boldsymbol{0}
$$

$$
\text{Var}(Q^T\boldsymbol{Y}) = Q^T \text{Var}(\boldsymbol{Y})Q = \sigma^2 I Q^TQ = \sigma^2I
$$</div>\EndKnitrBlock{corollary}


### Chi-square Distribution 

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-2"><strong>(\#cor:unnamed-chunk-2) </strong></span>If $\boldsymbol{Y} \sim N(\boldsymbol{0}, I)$, and $A$ is an idempotent matrix. Then $\boldsymbol{Y}^TA\boldsymbol{Y}$ follows $\chi^2_m$, where $m$ is the number of $A$'s eigenvalues equall to $1$. </div>\EndKnitrBlock{corollary}


\BeginKnitrBlock{proof}<div class="proof">Proof</div>\EndKnitrBlock{proof}


## Dirichlet Distributon 


