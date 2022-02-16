library(readxl)
lcd2 <- read_excel("LungCapData2.xlsx")
View(lcd2)

class(lcd2$Height)
plot(lcd2$Height,lcd2$LungCap,main="LungCap vs Height",las=1)
model1 <- lm(lcd2$LungCap~lcd2$Height)
summary(model1)
abline(model1,lwd=3,col="red")


# wrong way to fit polynomial regression
# Height^2 will not be added to this model
model2 <- lm(lcd2$LungCap~lcd2$Height+lcd2$Height^2)
summary(model2)
# right way to fit polynomial regression
model3 <- lm(lcd2$LungCap~lcd2$Height+I(lcd2$Height^2))
                

# You can make a new vector of Height square and fit the multiple regression
# you can also use "poly" to fit this model
model4 <- lm(lcd2$LungCap~poly(lcd2$Height,degrer=2,raw=T))
summary(model4)
model4 <- lm(lcd2$LungCap~poly(lcd2$Height,degrer=2,raw=F))
summary(model4)
# raw = F will fit a orthogonal polynomial
attach(lcd2)
lines(smooth.spline(Height,predict(model3)),col="blue",lwd=3)


# partial F test
#Ho: There is no significant diff in two model
#H1: The full model with Height^2 is better than the model just including Height
anova(model3,model1)
# Result: We have evidence to believe that model 
# including Height^2 provides a statistically 
# significant better fit than the model without.


# with degree 3
model6 <- lm(LungCap~Height+I(Height^2)+I(Height^3))
summary(model6)
# 2nd and 3rd degree model are nearly same
lines(smooth.spline(Height,predict(model6)),lwd=3,col="green")
anova(model3,model6)
legend(46,12,legend=c("model1","model3","model6"),col=c(4,3,2),lty=c(1,1,1),lwd=3,cex=0.9)
