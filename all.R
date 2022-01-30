#Independent two sample t-test and confidence interval are 
#parametric methods appropriate for examining the difference in 
#means for two populations. These are ways of examining the 
#relationship between a numeric outcome variable (Y variable) 
#and a categorical explanatory variable (X variable with 2 levels)



df <- read.table("LungCapData.txt",header=T,sep="\t")

attach(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender)

head(lcd)






attach(lcd)



rm(Smoke)
rm(Gender)
# first do a boxplot to see the difference
boxplot(LungCap~Smoke,main="Boxplot of LungCap by Smoke",las=1,col=c(4,3))
mean(LungCap[Smoke=="no"])
mean(LungCap[Smoke=="yes"])



t.test(LungCap~Smoke)


# Ho: Mean LungCap for smoker and non-smoker are sames
# H1: Ho is not true
t.test(LungCap~Smoke,mu=0,alt="two.sided",conf=.95,var.eq=F,paired=F)
# these are false so no need to pass the rest of the parameters 
t.test(LungCap~Smoke)
t.test(LungCap[Smoke=="no"],LungCap[Smoke=="yes"])


var(LungCap[Smoke=="no"])
var(LungCap[Smoke=="yes"])
help("t.test")


#t.test(LungCap~Smoke,mu=0,alt=c("less","two.sided","greater"),conf.level=c(.90,.95,.99))
# this will not work
