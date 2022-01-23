# already imported data
head(df)

#pie(AgeGroups)
hist(LungCap)
hist(LungCap,freq = F,las=1)

hist(LungCap,probability = T,ylim=c(0,.2),xlim=c(0,20),las=1)
hist(LungCap,breaks = 10)
hist(LungCap,prob=T,ylim = c(0,.2),xlim=c(0,18),breaks=15,main="myHIst",las=1)


lines(density(LungCap),col=2,lwd=3)
