# numeric to categorical data

# import the data

df <- read.table(file.choose(),header=T,sep="\t")
attach(df)


Gender <- as.factor(Gender)
Smoke <- as.factor(Smoke)
Caesarean <- as.factor(Caesarean)

lcd <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
detach(df)
attach(lcd)


class(Smoke)

levels(Smoke)
levels(Caesarean)
cat <- as.numeric(Gender)
head(cat)

# height to categorical
?cut
# cut default returns left open right closed (]
CatHeight <- cut(Height,breaks=c(0,50,55,60,65,70,100),labels=c("A","B","C","D","E","F"))
Height[1:10]
CatHeight[1:10]
par(mfrow=c(1,1))
boxplot(LungCap~CatHeight)

# left clsoe right open [)
CatHeight <- cut(Height,breaks=c(0,50,55,60,65,70,100),labels=c("A","B","C","D","E","F"),right=F)


catHeight <- cut(Height,breaks=5)
catHeight[1:10]
class(catHeight)
levels(catHeight)
