# still working on the lung Capacity data loaded in the previous 4.10 file


# we will explore the relationship between gender and smoke
# table of the gender and smoke
tab
new_table <- table(Gender,Smoke)
barplot(new_table,main="barplot of the gender and smoke",col=c(5,3),cex.main=1.5,las=1)
