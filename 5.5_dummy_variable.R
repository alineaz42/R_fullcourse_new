
df <- read.table(file.choose(),header=T,sep="\t")
attach(df)

names(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)

names(lcd)

# Multiple Linear Regression -----------------------
CatHeight <- cut(Height,breaks = c(0,50,55,60,65,70,75,100),labels = c("A","B","C","D","E","F","G"))
#help(cut)
levels(CatHeight)
class(CatHeight)
table(CatHeight)
plot(CatHeight)
min(Height)
max(Height)

mean(LungCap[CatHeight=="A"])
mean(LungCap[CatHeight=="B"])
mean(LungCap[CatHeight=="C"])
mean(LungCap[CatHeight=="D"])
mean(LungCap[CatHeight=="E"])
mean(LungCap[CatHeight=="F"])
mean(LungCap[CatHeight=="G"])

#----------Regression Starts here-------------------
mod <- lm(LungCap~CatHeight)
summary(mod)
# F critical value
# qf(0.05,6,718,lower.tail = F)