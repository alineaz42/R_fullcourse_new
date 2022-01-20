
# to check current working directory
getwd()
# to set working directory
setwd(filepath)

#my current working directory
setwd("E:\DS\six_month\3rd R\Marinstat R")

# to set wd manually
#1 got to session menu
#2. select set working directory
#3. choose working directory

# it is better to write code in console 


lcd <- read.table(file.choose(),header = T,sep="\t")
head(lcd)
attach(lcd)
Age

meanAge <- mean(Age)
meanAge
x <- c(2,3,2,1,3)
y <- 32
z = summary(lcd)
z
head(lcd)
newLcd 
Gender <- as.factor(Gender)
Smoke <- as.factor(Smoke)
Caesarean <- as.factor(Caesarean)

newLcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
newLcd
z <- summary(newLcd)
z


# to save as rdata in the current working directory
save.image("filename.Rdata")
# or also go to the session menu to save image
q() # to quite r 

# loading previous data
getwd()
project <- "E:/DS/six_month/3rd R/Marinstat R"
setwd(project)
getwd()
load("FirstProject.Rdata")
load(file.choose()) # will also do the same as the previous line of code
