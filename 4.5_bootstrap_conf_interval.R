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

