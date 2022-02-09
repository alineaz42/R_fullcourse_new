# still working on the lung Capacity data loaded in the previous 4.10 file


# we will explore the relationship between gender and smoke
# table of the gender and smoke
tab
new_table <- table(Gender,Smoke)
barplot(new_table,beside = T,main="barplot of the gender and smoke",col=c(5,3),cex.main=1.5,las=1,legend=T)


# main tests 
library(epiR)
epi.2by2(tab,method = "cohort.count",conf.level=0.95)
#odd ratio interpretation
# the odds of a female not smoking are 0.71 times the odds of a male smoking
# for the other one
0.71^-1


# setting the table in a standard way 
tab
tab2 <- matrix(c(314,44,334,33),nrow=2,ncol=2,byrow = T)
tab2


colnames(tab2) <- c("No","Yes")
rownames(tab2) <- c("Female","Male")
tab2
epi.2by2(tab2,method="cohort.count")
