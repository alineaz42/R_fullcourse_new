# already imported data
head(df)

#pie(AgeGroups)
hist(LungCap)
hist(LungCap,freq = F,las=1)

hist(LungCap,probability = T,
     ylim=c(0,.2),
     xlim=c(0,20),las=1)

