

lcd <- read.table(file.choose(),header=T,sep="\t")
head(lcd)
attach(lcd)



Smoke <- as.factor(Smoke)
names(lcd)
Gender<- as.factor(Gender)
Caesarean <- as.factor(Caesarean)


df <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
head(df)

# plots--------------------------------------
boxplot(LungCap,main="Lung Capacity",ylab="Lung Cap",las=1,ylim=c(0,16))
summary(LungCap)
quantile(LungCap)
quantile(LungCap,probs=c(0,.25,.5,.75,1))


levels(Caesarean)

boxplot(df ~ Gender)
head(df)
class(Gender)

names(df)

class(Gender)

femData <- Gender=="female"
length(femData)
head(femData)


femData <- as.numeric(femData)
head(femData)
boxplot(femData)


boxplot(LungCap~Gender,main="Boxplot of LungCap seperated by Gender",las=1)
boxplot(
  LungCap~Gender,
  main="Boxplot of Lung Capacity seperated by Gender",
  las=1,
  ylab = "Lung Capacity",
  names=c("Female","Male")
)

boxplot(
  LungCap[Gender=="female"],
  LungCap[Gender=="male"]
)

# box plot with two factors ---------------------------------------------------------------------
