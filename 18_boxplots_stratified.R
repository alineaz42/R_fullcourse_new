lcd <- read.table(file.choose(),header=T,sep = "\t")
head(lcd)
attach(lcd)
names(lcd)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)

df <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
attach(df)

# age groups
AgeGroups <- cut(Age,breaks=c(0,13,15,17,25),labels = c("<13","14/15","16/17","18+"))


boxplot(LungCap,ylab="LungCap",main="Title",las=1,col=3)
boxplot(LungCap~Smoke,ylab = "LC",main="Title",las=1,col=c(1,2),names=c("No","Yes"))

boxplot(LungCap[Age>=18]~Smoke[Age>=18],col=c(1,2))
boxplot(LungCap~Smoke*AgeGroups,main="Title",names=c("No","yes"),col=c(1,2),ylab="LungCap",las=2)
box()

boxplot(LungCap~Smoke*AgeGroups,ylab="LungCap",xlab="",main="Title",las=2,col=c(4,1))
