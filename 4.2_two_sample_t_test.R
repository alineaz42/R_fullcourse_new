

help(t.test)
?t.test



boxplot(df$LungCap~df$Smoke,main="Boxplot Of LungCap based on Smoke",las=1,
        xlab="Smoke",
        ylab="LungCap",
        col=c(4,2),
        cex.main=2,
         )
#axis(side=1,at=c(1,2),labels = c("NO","Yes"))
# axis(side=1,at=c(6,12.3,15),labels = c("sev","mean","15"))
# axis(side=2,at=c(55,65,75),s=c(55,65,75))



# H0: Mean LungCap of Smokers and Non-Smoker as same
# H1: H0 is not true

t.test(df$LungCap~df$Smoke,mu=0,
       alt="two.sided",conf=.95,
       var.eq=F,paired=F
       )
# all of these are default
t.test(df$LungCap~df$Smoke)
t.test(df$LungCap[df$Smoke=="no"],df$LungCap[df$Smoke=="yes"])
# to check the variance see the box plot of that data
median(df$LungCap[df$Smoke=="yes"])
# or calculate the variance 
x<-var(df$LungCap[df$Smoke=="no"])
y <-var(df$LungCap[df$Smoke=="yes"])
x>y


#Install the pacakage "car" first to run leven's test
# leven's test
# Ho: Population variance are equal
install.packages("car")
# leveneTest() Not working I don't know why
attach(df)
library(car)
leveneTest(LungCap~Smoke)
# reject the null hypothesis

