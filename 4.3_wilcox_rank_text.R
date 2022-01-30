

# import the data
df <- read.table("LungCapData.txt",header=T,sep="\t")
attach(df)

Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender)

head(lcd)


rm(df)

Age
detach(df)

attach(lcd)

help(wilcox.test)
?wilcox.test
