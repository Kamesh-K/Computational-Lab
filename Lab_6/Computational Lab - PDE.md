#  Computational Lab - PDE 

To solve the Laplacian equation we have 
$$
\frac{(T_{i+1,j} - 2T_{i,j}+T_{i-1,j})}{(\Delta x^2)} + \frac{(T_{i+1,j} - 2T_{i,j}+T_{i,j-1})}{(\Delta y^2)} = 0 \\
T_{i+1,j} + T_{i-1,j} + T_{i,j+1}+T_{i,j-1}-4T_{i,j}=0
$$


## Liebmann Method 

### Solving linear system faster than elliptic equations 

$$
u_{i,j}^{new} = u_{i,j}^{old} + \omega r_{i,j}/4 \\
\omega = \frac{4}{2+\sqrt{4 - (cos(\frac{\pi}{n-1})+cos(\frac{\pi}{m-1}))^2}}
$$

This method is used to accelerate the solving process for elliptic equations. 

The residual in this case is calculated as the error between the values of subsequent iterations. 

Reference Book:

Mathews and Fink - Numerical Methods 

