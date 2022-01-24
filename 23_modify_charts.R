#How to Modify and Customize Plots in R | R Tutorial 2.9
# 
# x <- 1:10
# plot(exp(x))
# lines(exp(x),col=2,lwd=3)


# to see the customization of plots in r
help(par)

# first import data
# and attach it

plot(Age,Height)
# changing the size of the points
plot(Age,Height,main="Scatterplot",cex=.5)
# bigger title
plot(Age,Height,main="Title",cex.main=2.5,cex.lab=1.5,
     cex.axis=.7
     )
# fonts
plot(Age,Height,main="Title",
     font.main=4,
     font.lab=4,
     font.axis=3,
     cex.axis=.7
     )

# changing colors
plot(Age,Height,main="Title",
     col=3,
     col.main=2,
     col.lab=4,
     col.axis=5
     )


#ploting characters
plot(Age,Height,main="Title",
     pch=2
     )
plot(Age,Height,main="Title",pch="n")
# linear models regressions
abline(lm(Height~Age),col=3,lwd=4,lty=2)

# plots for different categories
plot(Age[Gender=="female"],Height[Gender=="female"],col=2,pch="f",main="Title",
     xlab="Age",
     ylab="Height"
     
     )
points(Age[Gender=="male"],Height[Gender=="male"],pch="m",col=3)

# plots for male and female in diff. plots



# to split the window  
par(mfrow=c(2,2))
plot(Age[Gender=="male"],Height[Gender=="male"],xlab="Age",
     ylab="Height",
     main="Age vs Height for male",
     xlim=c(0,20),ylim=c(45,85),
     las=1)
plot(Age[Gender=="female"],Height[Gender=="female"],xlab="Age",
     ylab="Height",
     main="Age vs Height for female",
     xlim=c(0,20),ylim=c(45,85),
     las=1)
# relabeling the scale in plots


# video 10.16 min