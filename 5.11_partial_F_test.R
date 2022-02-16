# importing the data first.
df <- read.table(file.choose(),heade=T,sep="\t")
Smoke <- as.factor(df$Smoke)
Gender <- factor(df$Gender)
Caesarean <- as.factor(df$Caesarean)

LungCap <- df$LungCap
Age <- df$Age
Height <- df$Height


lcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)

#------------------------------------
attach(lcd)
# fitting polynomial regression
# y = b0 +b1*Age+b2*Age^2
Full.model <- lm(LungCap~Age+I(Age^2))
Reduced.model <- lm(LungCap~Age)
summary(Full.model)
summary(Reduced.model)

# anova
anova(Full.model,Reduced.model)
# as th e p value is 0.172 we fail to reject the null hypothesis
# H0: There is no significant diff in Full and Reduced model
df(0.05,722,723)


#----------------another example----------------------
model1 <- lm(LungCap~Age+Gender+Smoke+Height)
# excluded the height from the full model
model2 <- lm(LungCap~Age+Gender+Smoke)
summary(model1)
summary(model2)

anova(model2,model1)
# as the p value is extremely small we may reject the null hypothesis
# Ho: models do not significantly differ
