# import the data
df
head(df)


# help(t.test)
boxplot(df$LungCap,main="LungCap")

# H0: mu<8,H1: H0 is not true
# one sided 95% confidence interval
t.test(df$LungCap,mu=8,alternative = "less",conf.level = 0.95)
# similar test 
t.test(df$LungCap,mu=8,alt="less",conf=0.95)
# will return the same output




# two sided ----------------------------------
t.test(df$LungCap,mu=8,alt="two.sided",conf=0.95)
# two sided is the default in R,
# if we don't pass the alternative argument
t.test(df$LungCap,mu=8,conf=0.95)



# suppose for 99% confidence interval
t.test(df$LungCap,mu=8,conf=0.99)
TEST <- t.test(df$LungCap,mu=8,conf=0.90)
TEST

# attributes of an object
attributes(TEST)
# any of the attributes can be pulled from the object
TEST$p.value
TEST$null.value
TEST$conf.int
attach(TEST)
conf.int
detach(TEST)




ls()
rm(list=ls())



t.test(df$Age,mu=8,alternative = "less",conf.level = .95)

x <-t.test(df$Age,mu=8,conf=.95)

x$p.value
x$null.value


