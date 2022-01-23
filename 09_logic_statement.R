
lcd <- read.table(file.choose(),header=T,sep="\t")
attach(lcd)
head(Age)


temp <- Age>15
temp
temp2 <- as.numeric(Age>15)
temp2

head(lcd)
femSmoke <- Gender=="female" & Smoke=="yes"
head(femSmoke)
length(femSmoke)


MoreData <- cbind(lcd,femSmoke)
head(lcd)
head(MoreData)
# to clear the memory in r space
rm(list=ls())


x <- 10
y <- 12
x+y
sum(x,y)
