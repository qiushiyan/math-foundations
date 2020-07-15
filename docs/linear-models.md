
# (PART) Applications {-}

# Linear models

## Least square estimation 

From theorem \@ref(thm:best-approximation) we know that 


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>the **normal equation** 
$$
A^TA\boldsymbol{x} = A^T\boldsymbol{b}
$$</div>\EndKnitrBlock{definition}



$$
\boldsymbol{\beta} = (X^TX)^{-1}X^T\boldsymbol{y}
$$

thus: 

$$
\hat{\boldsymbol{y}} = X\boldsymbol{\beta} = X (X^TX)^{-1}X^{T}\boldsymbol{y}
$$

$$
\hat{\boldsymbol{y}} = \frac{\boldsymbol{x}_0^T\boldsymbol{y}}{\boldsymbol{x}_0^T\boldsymbol{x}_0}\boldsymbol{x}_0 + 
\frac{\boldsymbol{x}_1^T\boldsymbol{y}}{\boldsymbol{x}_1^T\boldsymbol{x}_1}\boldsymbol{x}_1
\cdots +
\frac{\boldsymbol{x}_p^T\boldsymbol{y}}{\boldsymbol{x}_p^T\boldsymbol{x}_p}\boldsymbol{x}_p
$$

## Maximum likelihood estimation
