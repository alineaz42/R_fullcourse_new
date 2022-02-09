# first import the data
# Lung Capacity Data
# chisq.test is conducted for two categorical data
df <- read.table(file.choose(),header=T,sep="\t")
attach(df)
names(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)


lcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)

# imported the required data here
help(chisq.test)
?chisq.test

tab <- table(Gender,Smoke)
barplot(tab,beside = T,legend=T,las=1,col=c(4,2),main="Gender and Smoke")

# the test
chisq.test(tab,correct=T)
# storing the test in an object
Ctest <- chisq.test(tab,correct=T)
attributes(Ctest)
Ctest$method
Ctest$statistic
Ctest$parameter
Ctest$p.value
Ctest$data.name
Ctest$observed


# fisher's Exact test is a non-parametric test 
# equivalnet ot Chi-square test
fisher.test(tab,conf.int=T,conf.level = 0.99)
