
#Calculating Mean, Standard Deviation, Frequencies and More in R | R Tutorial 2.8| MarinStatsLectures

# load the dataframe first 
head(lcd)
class(Gender)
levels(Gender)
table(Gender)
table(Age,Gender)
  
table(Smoke)

table(Smoke)/length(Smoke)
table(Smoke)/length(Smoke)*100


table(Smoke,Gender)
table(Smoke,Gender)/length(Smoke)


# for numeric data
mean(LungCap)
mean(LungCap,trim=.1)

median(LungCap)
var(LungCap)
sd(LungCap)
sqrt(var(LungCap))


min(LungCap)
max(LungCap)
range(LungCap)

quantile(LungCap,probs = .25)
quantile(LungCap,probs=c(.25,.75,.9))
sum(LungCap)
# pearsons correlation is the default correlation
cor(LungCap,Age)
# spearman correlation
cor(LungCap,Age,method = "spearman")
cov(LungCap,Age)
# same as 
var(LungCap,Age)
summary(LungCap,Age)
summary(LungCap)
# for categorical values will return a table
summary(Smoke)
pie(LungCap)
#pie(Smoke)
summary(lcd)
