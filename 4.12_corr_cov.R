# also working on th lungcapdata 
# par(mfrow=c(2,2))
# plot(seq(1,100))
# par(mfrow=c(1,10))


cor(Age,LungCap)
plot(Age,LungCap)

df <- read.table(file.choose(),header = T,sep="\t")


class(df$Gender)
Smoke <- as.factor(df$Smoke)
Gender <- as.factor(df$Gender)
attach(df)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender)
class(lcd$Smoke)
cor(Age,LungCap)

plot(Age,LungCap,main="Scatter of age and lungcap")


cor(Age,LungCap,method="spearman")
# kendall rank correlation
cor(Age,LungCap,method="kendall")

# confidence interval for the correlation and hypothesis testing
cor.test(Age,LungCap)
cor.test(Age,LungCap,method="spearman")
cor.test(Age,LungCap,method="kendall")
# to avoid the error use exact = F
cor.test(Age,LungCap,method="spearman",exact=F)
# we can change the alternative hypothesis 
cor.test(Age,LungCap,method="spearman",alt="greater",exact=F,conf.level = 0.99)


# covariance -------------------------------------------------------
cov(Age,LungCap)
# pairwise plot of the lungCap Data
pairs(lcd)
# pairwise plot only for numerical data
pairs(lcd[,1:3])
# for all the numerical data correlation
cor(lcd[,1:3])
# we also can change the method also like spearman or kendall