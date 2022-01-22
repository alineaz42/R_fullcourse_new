library(readxl)
lcd <- read_excel("LungCapData.xlsx", col_types = c("numeric", 
                                                    "numeric", "numeric", "text", "text", 
                                                    "text"))
View(lcd)


attach(lcd)

names(lcd)
class(Smoke)
Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)


df <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
head(df)


summary(df)


attach(df)

count <- table(Gender)
percent <- count/length(Gender)

barplot(count,main = "Number of Male and Female")
barplot(percent,main="Percent of Male and Female")
