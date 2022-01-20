# Scripts are useful as they allow one
# to easily pick up where they left on 
# a project and progressively 
# build and refine code and analysis
# They also allow one to easily reproduce
# analysis run earlier...

#A script is a set of commands that usually 
#includes commenting on what each piece of code is
#intended to do....

# i am working in r script since the begining
# ctrl+shift+c to comment

### first load ###

lcd <- read.table(file.choose(),header=T,sep="\t")

### attach it###
attach(lcd)
# check if some need to make as factor
Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)

newData <- data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
newData


meanAge <- mean(Age)
z <- summary(newData)
z
save.image("SecondProject.Rdata")
