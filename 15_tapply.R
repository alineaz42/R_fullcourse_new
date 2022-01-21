

df <- read.table(file.choose(),header=T)
head(df)
attach(df)
names(df)
class(Smoke)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)


df2 <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
summary(df2)
attach(df2)

tapply(Age, Smoke, mean,na.rm=T)
# return vector
m <- tapply(Age,Smoke,mean,na.rm=T) 
# returns a list
n <- tapply(Age,Smoke,mean,na.rm=T,simplify = F)


tapply(Age,Smoke,summary)
tapply(Age,Smoke,quantile,probs=c(.2,.8))
tapply(Age,list(Smoke,Gender),mean,na.rm=T)


x1<-mean(Age[Gender=="female" & Smoke=="yes"])
x2<-mean(Age[Gender=="female" & Smoke=="no"])
x3<-mean(Age[Gender=="male" & Smoke=="yes"])
x4<-mean(Age[Gender=="male" & Smoke=="no"])
z <- c(x1,x2,x3,x4)
z
# the following one is better 
tapply(Age,list(Smoke,Gender),mean,na.rm=T)

by(Age,list(Smoke,Gender),mean,na.rm=T)
