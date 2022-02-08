

d <- read.table(file.choose(),header=T,sep="\t")
head(d)

class(d$Diet)


WeightLoss <- d$WeightLoss
Diet <- as.factor(d$Diet)
class(Diet)
levels(Diet)


df <- data.frame(WeightLoss,Diet)


class(df)
head(df)
View(df)
# ANOVA 
boxplot(df$WeightLoss~df$Diet)


attach(df)
?aov
help(aov)
# Ho: Mean of several diets are same
#H1: Ho is not true


ANOVA1<-aov(WeightLoss~Diet)
summary(ANOVA1)
attributes(ANOVA1)
ANOVA1$coefficients


# MULTIPLE COMPARISON TUKEYHSD
TukeyHSD(ANOVA1)
plot(TukeyHSD(ANOVA1),las=1)



# kruskal test 
kruskal.test(WeightLoss~Diet)            
