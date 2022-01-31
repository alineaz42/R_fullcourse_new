

df <- read.table(file.choose(),header=T,sep="\t")
head(df)
names(df)

attach(df)
Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
head(lcd)

plot(Age,Height,main="Age vs Height Scatterplot",
     ylab = "Height",
     xlab="Age",
     xlim = c(0,25),
     cex=.5,
     las=1
     )
abline(lm(Height~Age),col=2,lwd=3)
lines(smooth.spline(Age,Height),col=3,lty=4,lwd=3)
cor(Age,Height)
abline(lm(Height~Age),col=4,lwd=3)
lines(smooth.spline(Age,Height),col=3,lty=4,lwd=3)
