

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
# stratifying the age into groups
AgeGroups <- cut(Age,breaks=c(0,13,15,17,25),labels = c("<13","14/15","16/17","18+"))
AgeGroups
levels(AgeGroups)


# first make a boxplot of the lung cap data
boxplot(LungCap,ylab="LungCap",main="Lung Capacity",las=1)
boxplot(LungCap~Smoke,ylab="Lung Cap",main="Boxplot of Smoke vs Nosmoke",las=1)


# for age 18+
boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab="LungCap",main="Boxplot of 18+ Age",las=1)

# for different age groups
boxplot(LungCap~Smoke*AgeGroups,ylab="LungCap",main="LungCap vs Smoke,by age groups",las=1)

boxplot(LungCap~Smoke*AgeGroups,ylab="LungCap",xlab="",main="Lungcap vs Smoke,by age groups",las=2)
# with colors 
boxplot(LungCap~Smoke*AgeGroups,ylab = "LungCap",xlab="",main="Title",las=2,col=c(4,2))

# gonna learn later this section-----------------------------------
# box()
# axis(2,at=seq(0,20,2),seq(0,20,1),las=1)
# axis(1,at=c(1.5,3.5,5.5,7.5),labels=c("<13","14-15","16-17","18+"))
# legend(x=5.5,y=4.5,legend=c("Non-Smoke","Smoke"),col=c(4,2))
