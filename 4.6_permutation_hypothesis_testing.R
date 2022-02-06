# alternate approcach to two sample t testInheritedMethods(
#   or non-parametric test mann whitney U aka wilcoxon rank 
#   
#   


d <- read.table(file.choose(),header=T,sep=",")
names(d)
View(d)
class(d$feed)

feed <- as.factor(d$feed)
weight <- d$weight

d <- data.frame(weight,feed)
head(d)


class(d$feed)
levels(d$feed)
table(d$feed)

#------------------------------------------main code-------------------
boxplot(d$weight~d$feed,las=1,ylab="Weight(g)",xlab="Feed",main="Weight by Feed",col=c(4,2))


a <-with(d,tapply(d$weight,d$feed,mean))
a[1,1]
# abs mean test and abs median test
test.stat1 <- abs(mean(d$weight[d$feed=="casein"])-mean(d$weight[d$feed=="meatmeal"]))
test.stat2 <- abs(median(d$weight[d$feed=="casein"])-median(d$weight[d$feed=="meatmeal"]))



############################
######PERMUTATION TEST######----------------------------------------------------
############################
set.seed(1979)
n <- length(d$feed)
P <- 100000
variable <- d$weight

PerSamples <- matrix(0,nrow=n,ncol=P)

for (i in 1:P){
  PerSamples[,i]<- sample(variable,size = n,replace = F)
}
PerSamples[,1:5]


# Test Statistics
Perm.test.stat1 <- Perm.test.stat2 <- rep(0,P)
Perm.test.stat1[1:10]


for (i in 1:P){
  Perm.test.stat1[i] <- abs(mean(PerSamples[d$feed=="casein",i])-mean(PerSamples[d$feed=="meatmeal",i]))
  Perm.test.stat2[i] <- abs(median(PerSamples[d$feed=="casein",i])-median(PerSamples[d$feed=="meatmeal",i]))
}


test.stat1;test.stat2


round(Perm.test.stat1[1:15],1)
round(Perm.test.stat2[1:15],1)


# P value of the permuation test
# p =(The num of permuation test state that are greater than the observed test statistics)
#    / P = the total number of permuation test statisctics


(Perm.test.stat1 >= test.stat1)[1:15]
(Perm.test.stat2>=test.stat2)[1:15]

mean(Perm.test.stat1>= test.stat1)
# p ~~ 0.10001
mean(Perm.test.stat2>=test.stat2)
# p ~~ 0.0544

# we fail to reject the null hypo



# FOR FURTHER MORE INFORMATION FOLLOW THE LIKE:
# https://bit.ly/30097VA