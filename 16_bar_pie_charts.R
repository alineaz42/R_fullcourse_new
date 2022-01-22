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
barplot(percent,main="Percetage of Male and Female",xlab="Gender",ylab="Percetage",las=1)
barplot(percent,main="Percentage of Male and Female",
        xlab="%",
        ylab="Gender",horiz = T,
        names.arg = c("Female","Male"),
        las=1
        )

pie(count,main="Title")
pie(count,main="Title",
    col=heat.colors(n)
    )
box()
