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

# 
# Ad <- seq(1,5)
# Sales <- c(1,1,2,2,3)
# plot(Ad,Sales,main="Scatter plot of Ad vs Sales",las=1,cex.main=1.5,col=4,cex=2)
# 
# a <- seq(1,10)
# b <- c(1,5,2,7,6,9,8,12,10,18)
# plot(a,b,main="A is the leverage point")
# legend(9,18,legend = "A")
# 
# x <- seq(1,19)
# x1 <- rep(2,5)
# x2 <- seq(3,20,2)
# x3 <- rep(21,5)
# y <- c(x1,x2,x3)
# plot(x,y,xlim=c(1,25),ylim=c(1,25),pty="l")
# length(y)
# plot(x,y,xlim=c(1,25),ylim=c(1,25))
# length(y)


# ls()
# a <- 5


# x.1 = 47
# x.1
# x <- x.1
# sqrt(x)
# log(x)
# exp(x)
# floor(x)
# round(x)
# log10(x)
# log2(x)
# abs(-x)


# x <- rep(c("M","F"),5)
# x
# x <- rnorm(5,5,10)
# x
# x[x>5]
# x.1 = seq(1,3)
# x.2 = seq(4,6)
# x.3 = seq(8,10)
# x <- matrix(x.1,x.2,x.3)
# x

# df <- read.table("LungCapData.txt",header=T)
# head(df)

# set.seed(123)
# dnorm(70,75,5)
# dnorm(70,75,5)
# set.seed(123)
# pnorm(70,75,5,lower.tail=T)
# set.seed(123)
# pnorm(70,75,5,lower.tail=F)

# x = seq(43,55,.25)
# dens = dnorm(x,75,5)
# plot(x,dens,pch=16,col=4,main="X~N(75,5)",
#     ylab="pdf",xlab="X",col.main=4,col.lab=4,cex.lab=1.3,las=1
# )
# plot(x,dens)



# x<- pt(2.5,25,lower.tail=T)
# x


# x <- seq(55,95,.25)
# dens <- dnorm(x,75,5)
# plot(x,dens,main="X~N(75,5)",xlab="X",ylab="f(x)",pch=16,col=4,las=1)
# legend(85,0.075,legend="f(x)",col=4,pch=16,cex=1)
# abline(v=75,cex=3,col=4)


# # reading excel files
# library(readxl)
# LungCapData <- read_excel("LungCapData.xlsx",sheet="Sheet1")
# head(LungCapData)


# library(readxl)
# lcd <- read_excel("LungCapData.xlsx",sheet="Sheet1",range="C5:G20")
# head(lcd)
# summary(lcd)
# attach(lcd)
# class(lcd$Gender)
# Gender
# Gender <- as.factor(Gender)
# class(Gender)
# levels(Gender)
# table(Gender)



# test <- t.test(lcd$LungCap,mu=8,alt="less",conf.level=0.95)
# attributes(test)
# test$p.value
# Smoke
# Smoke <- as.factor(Smoke)

# t.test(lcd$LungCap~Smoke)
# class(Smoke)


# head(LungCap)
# df <- data.frame(LungCap,Smoke,Age)
# attach(df)

# wilcox.test(LungCap~Smoke,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,paired=F,exace=T,correct=T)



# # exporting data 
# DataToExport <- data.frame(Subject,Age,Gender,Score)

# write.csv(DAtaToExport,file="DataToExport.csv",row.names=F,sep=",")
# write.table(DataToExport,file="file.ext",row.names=F,sep="\t")

# Gender
# nam <- as.numeric(Gender)
# nam


stockprice = read.csv(file.choose(),header=T)
head(stockprice)


apply(stockprice$Stock1, MARGIN=2, FUN=mean)
    apply(stockprice$Stock3 , MARGIN=1, FUN=mean)
head(stockprice)


mean(stockprice$Stock1)
head(stockprice$Stock2)


plot(stockprice$X,stockprice$Stock1)



plot(Age,Height,main="Title",axes=F)
axis(side=1,at=seq(6,15,3),labels=c("sev","mean","15"))
axix(side=2,at=seq(55,75,10),s=c(55,65,75))
box()


df <- read.table(file.choose(),header=T,sep="\t")

Smoke =as.factor(df$Smoke)
Gender = as.factor(df$Gender)


lcd = data.frame(df$LungCap,df$Age,df$Height,Smoke,Gender)
head(lcd)


rm(df)
rm(Gender)
rm(Smoke)


attach(lcd)

plot(df.Age,df.LungCap,main="title",las=1)
names(lcd)
r <-cor(df.Age,df.LungCap)

text(x=5,y=11,label=r,adj=0)
abline(h=mean(df.LungCap),cex=3,col=4)
abline(v=mean(df.LungCap),col=4,cex=3)
