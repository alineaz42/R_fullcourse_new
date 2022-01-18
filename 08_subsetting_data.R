

lcd <- read.table(file.choose(),header=T,sep="\t")
lcd
names(lcd)

attach(lcd)
LungCap

length(Age)
dim(lcd)
Age[11:20]
mean(Age[11:20])


names(lcd)
class(Smoke)
Smoke <- is.factor(Smoke)
class(Smoke)
summary(Smoke)
Smoke
lcd
names(lcd)
detach(lcd)


ls()
rm(Smoke)
attach(lcd)
lcd
head(lcd)


length(lcd)
lcd
dim(lcd)
lcd[720:725,]
tail(lcd)


attach(lcd)
Age
Smoke
Smoke <- as.factor(Smoke)
class(Smoke)
summary(Smoke)
Gender <- as.factor(Gender)

Age
names(lcd)
mean(Age[Gender=="female"])
mean(Age[Gender=="male"])

hist(Gender)
class(Gender)
summary(Gender)


levels(Gender)


FemaleData <- lcd[Gender=="female",]
FemaleData
dim(FemaleData)
MaleData<- lcd[Gender=="male",]


length(FemaleData$Age)+length(MaleData$Age)


MaleOverFifty <- MaleData[Age>=15,]
MaleOverFifty


MaleOver15 <- lcd[Gender=="male" & Age>=15,]
MaleOver15
dim(MaleOver15)
head(MaleOver15)
