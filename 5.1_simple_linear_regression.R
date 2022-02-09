# on the LungCapData.txt/xlsx
# imported the data and attached it 

# first get the scatter plot it explains if there is any realationship
plot(Age,LungCap,las=1,main="Age vs LungCap")
# get the pearson's correlation
cor(Age,LungCap)


# regression
help(lm)

mod <- lm(LungCap~Age)
summary(mod)
attributes(mod)
mod$coefficients
# all are same here
mod$coef 
coef(mod)

# adding line to the plot
plot(Age,LungCap,main="Age VS LungCap",las=1,pch=16,col=4)
abline(mod,lwd=3,col=4)
abline(v=mean(Age),lwd=3,col=3)


# confidence interval for the linear model
confint(mod)
# changing the level of confidence 
confint(mod,level = 0.99)
summary(mod)


#anova table for the model
anova(mod)
