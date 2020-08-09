
# (PART) Applications {-}

# Linear models

## Ordinary Least Squares

### Least square estimation 

From theorem \@ref(thm:best-approximation) we know that 

$$
\bar{\beta} = (X^TX)^{-1}X^T\bar{y}
$$

thus: 

$$
\hat{\bar{y}} = X\bar{\beta} = X (X^TX)^{-1}X^{T}\bar{y}
$$

When columns of the design matrix $A$ are orthogonal, the orthogonal projection of $\bar{y}$ onto $\mathcal{R}(X)$ is given by  

$$
\hat{\bar{y}} = \frac{\bar{x}_0^T\bar{y}}{\bar{x}_0^T\bar{x}_0}\bar{x}_0 + 
\frac{\bar{x}_1^T\bar{y}}{\bar{x}_1^T\bar{x}_1}\bar{x}_1
\cdots +
\frac{\bar{x}_p^T\bar{y}}{\bar{x}_p^T\bar{x}_p}\bar{x}_p
$$
### Maximum likelihood estimation

The log likelihood function is given by 





## Weighted least squares

## Partial least squres  


## Regularized regression

### Ridge regression

### Lasso regression

### Elastic net regression
