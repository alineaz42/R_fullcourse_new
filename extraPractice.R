
x <- 1:18
x <- matrix(x,nrow = 3,ncol=3,byrow=T)
x
apply(x,2,mean)
apply(x,2,sum)

apply(x,1,sum,na.rm=T)


x <- rnorm(5)
y <- c(23,32,34,33,21)
z <- as.factor(c("no","yes","no","yes","yes"))
df <- data.frame(x,y,z)
df


apply(df[,-3],2,mean,na.rm=T)
class(df[,3])

attach(df)
class(z)
levels(z)
summary(z)

tapply(x, 2, sum,na.rm=T)

x
tapply(x,z,mean)

# now i do understand something which is better than nothing
