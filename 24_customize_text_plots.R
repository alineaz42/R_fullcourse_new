# Add and Customize Text in Plots with R | R Tutorial 2.10

df <- read.table(file.choose(),header=T,sep="\t")
head(df)
attach(df)
detach(df)

names(df)

Smoke <- as.factor(df$Smoke)
Gender <- as.factor(df$Gender)

lcd <- data.frame(df$LungCap,df$Age,df$Height,Smoke,Gender)
head(lcd)

attach(lcd)


# help(text)
plot(Age,LungCap,
     main="Age vs LungCap",
     las=1
     )
cor(Age,LungCap)
cor(Age,LungCap,method="spearman")

text(x=5,y=11,label="r=81.96",adj=0)

plot(Age,LungCap,main="Age vs LungCap",las=1,xlim=c(0,20))
text(x=5,y=11,labels="r=.8196",cex=.5,col=4,font=3)
abline(h=mean(LungCap),col=4,lwd=3)
text(x=2.5,y=8.5,adj=0,label="Mean LungCap",cex=.65,col=2)
abline(v=quantile,prob=.5,col=4)

plot(Age,LungCap,main="Age vs LungCap",las=1,xlim=c(0,20))
mtext(text="Mean",side = 2)
abline(h=mean(LungCap),cex=3,col=4)
