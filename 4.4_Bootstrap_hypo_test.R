# ► Bootstrapping in statistics is a resampling based approach useful for estimating the sampling distribution and standard error of an estimate. 
# ► Bootstrapping in statistics and in research provides an alternative approach to approaches based on large sample theory (you may recall that many approaches rely on having a large n in order to carry out the method). It becomes particularly useful when dealing with more complicated estimates, where their sampling distribution and/or standard error may not be easily calculated

df <- read.csv("ChickData.csv",header=T)
# firstly convert feed to factor
attach(df)

boxplot(weight~feed)
mean(weight[feed=="casein"],na.rm=T)
mean(weight[feed=="meatmeal"],na.rm=T)



# same as the above two lines of code
with(df,tapply(weight, feed,mean))
# if finds na use na.rm=T 
help(with)

# mean diff absolute
test.stat1 <- abs(mean(weight[feed=="casein"])-mean(weight[feed=="meatmeal"]))
test.stat1
# same 
abs(diff(with(df,tapply(weight,feed,mean))))

median(weight[feed=="casein"])
median(weight[feed=="meatmeal"])


test.stat2 <- abs(median(weight[feed=='casein'])-median(weight[feed=="meatmeal"]))
test.stat2
abs(diff(with(df,tapply(weight,feed,median))))


t.test(weight~feed,mu=0,alt="two.sided",paired=F,var.eq=F)
wilcox.test(weight~feed,paired=F)

#############################
##### BOOTSTRAP APPROACH#####
#############################
set.seed(112358)
n <- length(feed)
n
B <- 10000
variable <- weight
BootstrapSamples <- matrix(sample(variable,size=n*B,replace=T),nrow=n,ncol=B)

dim(BootstrapSamples)


Boot.test.stat1 <- rep(0,B)
Boot.test.stat2<- rep(0,B)
# going hard man
for (i in 1:B){
    Boot.test.stat1[i] <- abs(mean(BootstrapSamples[1:12],i)-mean(BootstrapSamples[13:23,i]))
    Boot.test.stat2[i] <- abs(median(BootstrapSamples[1:12,i]-median(BootstrapSamples[13:23,i])))
}


test.stat1;test.stat2


round(Boot.test.stat1[1:20,1])
round(Boot.test.stat2[1:20,1])
