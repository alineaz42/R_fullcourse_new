# first import the data

lungCapData <- read.table(file.choose(),header = T,sep="\t")
lungCapData
# mean age of the data
names(lungCapData)
mean(lungCapData[,2])
mean(lungCapData$Age)

# store age in a variable vector
age <- lungCapData$Age
LungCap <- lungCapData$LungCap
Height <- lungCapData$Height
Smoke <- lungCapData$Smoke
Gender <- lungCapData$Gender
Caesarean <- lungCapData$Caesarean





# Attach is the best way to declair variables in a df
attach(lungCapData)
Age
Height
# class(Smoke) is not factor cause i haven't imported is as a factor
# detach the data
detach(lungCapData)


round(mean(age))
length(age)


mean(age)
type(age)
class(age)
plot(lungCapData[,2])
boxplot(lungCapData[,2])
hist(age)

max(age)
min(age)

median(age)
mode(age)
# --------------------------------------------------------


library(readxl)
LungCapData <- read_excel("E:/DS/six_month/3rd R/Marinstat R/LungCapData.xlsx")
View(LungCapData)


attach(LungCapData)
names(LungCapData)
Age
class(Smoke)
levels(Smoke)

summary(LungCapData)


x <- c(1,0,0,1,1,1,0)
class(x)
summary(x)

x <- as.factor(x)
summary(x)
class(x)

names(LungCapData)
Gender <- as.factor(Gender)
class(Gender)
summary(Gender)
levels(Gender)

