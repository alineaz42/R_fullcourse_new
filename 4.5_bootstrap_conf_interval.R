# working on the same data set chick data

d <- read.table(file.choose(),header=T,sep=",")

feed <- as.factor(d$feed)

attach(d)
df <- data.frame(weight,feed)
head(df)


detach(d)


attach(df)

# confidence interval
# 1. Estimate: Diff in mean diff
# 2. Estimate: Diff in median diff

with(df,tapply(weight,feed,mean))
with(df,tapply(weight,feed,median))
Obs.diff.in.means <- mean(weight[feed=="casein"])-mean(weight[feed=="meatmeal"])
Obs.diff.in.meadian <- median(weight[feed="casein"])-median(weight[feed="meatmeal"])

Obs.diff.in.meadian
levels(feed)

-diff(with(df,tapply(weight,feed,mean)))
-diff(with(df,tapply(weight,feed,median)))



median(weight[feed=="casein"])-median(weight[feed=="meatmeal"])
-diff(with(df,tapply(weight,feed,median)))


####################################
######Bootstrap CF##################
####################################
set.seed(13579)
n.c <- 12
n.m <- 11
B <- 10000

Boot.casein <- matrix(sample(weight[feed=="casein"],size=B*n.c,replace=T),ncol=B,nrow=n.c)
Boot.meatmeal <- matrix(sample(weight[feed=="meatmeal"],size=B*n.m,replace=T),ncol=B,nrow=n.m)

dim(Boot.casein);dim(Boot.meatmeal)
Boot.casein[1:5,1:5]

#--------------------
Boot.Diff.In.Means <- colMeans(Boot.casein)-colMeans(Boot.meatmeal)
length(Boot.Diff.In.Means)
Boot.Diff.In.Means[1:20]


Boot.Diff.In.Medians <- apply(Boot.casein,2,median)-apply(Boot.meatmeal,2,median)
Boot.Diff.In.Medians[1:5]
length(Boot.Diff.In.Medians)


# Making the confidence intervals with 95%
#1. Percentile Method 2. Basic Method
#3. Normal Method 4. Bias-Corrected method


# percentila method for the means
quantile(Boot.Diff.In.Means,probs = 0.025)
quantile(Boot.Diff.In.Means,probs = 0.975)


# percentile method for the medians
quantile(Boot.Diff.In.Medians,probs=0.025)
quantile(Boot.Diff.In.Medians,probs=0.975)





