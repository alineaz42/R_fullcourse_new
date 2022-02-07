
# importing the data
d <- read.table(file.choose(),header=T,sep="\t")

class(d$Before)
class(d$Subject)
d$Subject[1:10]

View(d)
boxplot(d$Before,d$After)
plot(d$Before,d$After)
# the line for x==y
abline(a=0,b=1,cex=3)


# test
t.test(d$Before,d$After,mu=0,alternative = "two.sided",paired=T,var.eq=F)
# after then before 
t.test(d$After,d$Before,mu=0,alt="two.sided",paried=T,conf.level =0.99,var.eq=F)
