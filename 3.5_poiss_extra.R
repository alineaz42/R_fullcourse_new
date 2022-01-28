# Poisson Distribution in R | R Tutorial 3.2

help(dpois)
# The Poisson Distribution
# Description
# Density, distribution function, quantile function and random generation for the Poisson distribution with parameter lambda.
# 
# Usage
# dpois(x, lambda, log = FALSE)
# ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)
# qpois(p, lambda, lower.tail = TRUE, log.p = FALSE)
# rpois(n, lambda)


dpois(x=4,lambda = 7)
# p(x=0) & p(x=1) .... p(x=3)
dpois(0:4,7)
dpois(0:3,7)

