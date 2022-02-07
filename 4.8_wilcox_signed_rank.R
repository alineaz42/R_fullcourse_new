

# we will learn how to conduct the Wilcoxon Signed Rank test in R. The paired samples Wilcoxon test (or Wilcoxon Signed Rank test) can be thought of as a non-parametric alternative to the paired sample t-test or dependent-samples t test. It is used when your data are not normally distributed. 
# working on the same data BloodPressure.txt

attach(d)
Before
After
help("wilcox.test")


boxplot(Before,After)
#Ho: Median change in Systolic Blood Pressure = 0
# two.sided test

wilcox.test(Before,After,mu=0,alternative = "two.sided",paired=T,conf.int=T,conf.level=0.99)
# for approximate p value
wilcox.test(Before,After,mu=0,alt='two.sided',paired=T,conf.int=T,conf.level=0.99,exact = F,correct = F)
#correct=F for not continuity correction
