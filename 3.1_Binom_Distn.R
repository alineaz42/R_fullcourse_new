#Binomial Distribution in R | R Tutorial 3.1
# P(X=3)
dbinom(3,20,.6)

# p(x=0,1,2,3)
dbinom(0:3,20,.6)
dbinom(0:3,20,1/6)
# x<=3
x <- dbinom(0:3,20,1/6)
sum(x)

# pbinom
pbinom(q=3,size=20,prob=1/6,lower.tail = T)
help(pbinom)



# these also can be done
# dbinom(x, size, prob, log = FALSE)
# pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)
# qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)
# rbinom(n, size, prob)

