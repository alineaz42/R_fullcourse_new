

# still working on the same lung capacity data
head(Smoke)
# lcd is attached
mod2 <- lm(LungCap~Age+Height)
summary(mod2)
plot(mod2)


cor(Age,Height)
# creating confidence interval
confint(mod2,conf.level=0.95)
head(lcd)


# fintting model for all the variable 
mod3 <- lm(LungCap~Age+Height+Smoke+Gender+Caesarean)
summary(mod3)
par(mfrow=c(2,2))
plot(mod3)

x <- c(4,3,2)
y <- c("4","3","2")
pie(x,col=c(4,3,2),labels = y)
help(pie)
