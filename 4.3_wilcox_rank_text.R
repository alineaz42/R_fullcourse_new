

# import the data
df <- read.table("LungCapData.txt",header=T,sep="\t")
attach(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender)

head(lcd)


rm(df)

Age
detach(df) 

attach(lcd)

help(wilcox.test)
?wilcox.test
# box plot first
boxplot(LungCap~Smoke)
# Ho: Median of LungCap of smoker= Median of LungCap of non-smokers

wilcox.test(LungCap~Smoke,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,paired=F,exact=T,correct=T)
