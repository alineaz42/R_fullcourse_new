

pt(2.5,25,lower.tail = T)
x<-pt(2.3,25,lower.tail = T)
y <-pt(-2.3,25,lower.tail = T)
x+y

x*2


# confidence interval
qt(.025,25,lower.tail = T)
qt(.025,1,lower.tail = F)


# Normal distribution
# f(x<=70) ,mean=75, variance = 5
pnorm(70,75,5,lower.tail=T)
# In R lower.tail=T is the default , so no need to pass it True

# P(x>=85)
pnorm(85,70,5,lower.tail=F)

pnorm(85,70,5)

# Standard Normal
# P(z>=1)
pnorm(1,lower.tail=F)


# qnorm() to calculate the quantile or percentile of N(mu,sigma)

# p=.25 1st Quantile mu=75, sigma=5
qnorm(.24,75,5,lower.tail = F)

# pdf of normal distribution
dnorm(3,70,5)
dnorm(85,70,5,log=T)



# sequence from 55 to 95 increment by .25
x <- seq(55,95,.25)
head(x)


dens <- dnorm(x,75,5)
head(dens)

plot(x,dens,main="X vs Probability",xlab='X',ylab="f(x)",pch=16,col=4,las=1)

legend(60,.075,legend="P(x)",col=4,pch=16,cex=.8)


plot(x,dens,main="X vs Probs",type="l",cex=3)


plot(x,dens,main="X~Norm: Mean=75,SD=5",xlab="X",ylab="Probability",type="l",las=1)
# mean line
abline(v=75,cex=3)



# drawing sample from a normal distribution

rand <- rnorm(40,75,5)
head(rand)


hist(rand)

# though the sample is from the normal distribution
# but the hist of the random samples may not be normal





# ------------------------------------------------------
# t ~ distribution
# mean = 0 ,sigma=1 ,df=25
# t-stat=2.3 ,df = 25
# P(t>2.3)
pt(2.3,25,lower.tail = F)
pt(2.3,25,lower.tail=T)


# two sided p value
pt(2.3,25,lower.tail = F)+pt(-2.3,25,lower.tail = T)
# the area is 2 percent approximately

# or take one sided p value and double this
pt(2.3,25,lower.tail = F)*2




# creating the confidence interval
# find t value for 95% confidence interval
# value of t with 2.5% in each tail


qt(0.025,25,lower.tail = T)
qt(.025,25,lower.tail=F)

# help(pf) for f distribution
help(pf)
help(pexp) # for exponential distribution

