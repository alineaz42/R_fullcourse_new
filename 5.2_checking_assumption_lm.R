class(lcd$Smoke)

names(lcd)

attach(lcd)

mod <- lm(LungCap~Age)
plot(Age,LungCap)
abline(mod,lwd=3)
summary(mod)
# assumption of linear regression
# 1. y are independent
#2. y can be expressed as linear fn of x
#3. var(e) is constant
#4. y's and ei's are normally distributed
plot(mod)
# to see the four figure in one page
par(mfrow=c(2,2))
plot(mod)
par(mfrow=c(1,1))
