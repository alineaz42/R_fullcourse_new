#Independent two sample t-test and confidence interval are 
#parametric methods appropriate for examining the difference in 
#means for two populations. These are ways of examining the 
#relationship between a numeric outcome variable (Y variable) 
#and a categorical explanatory variable (X variable with 2 levels)



df <- read.table("LungCapData.txt",header=T,sep="\t")
head(df)
attach(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender)

head(lcd)



ls()


attach(lcd)



boxplot(LungCap~Smoke,main="LungCap~Smoke",las=1,col=c(4,2))
t.test(LungCap~Smoke,mu=0,conf=0.95,var.eq=F,paired=F)
t.test(LungCap~Smoke)

# levens text to see the variances 
# to test 
# Ho: variance are same ag. H1. Ho is not true
library(car)
leveneTest(LungCap~Smoke)
# as the p values is less than 0.05 we may reject our null hypothesis
