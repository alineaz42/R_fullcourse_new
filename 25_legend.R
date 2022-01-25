# imported the data


# main codes
# plot for non smokers
plot(Age[Smoke=="no"],LungCap[Smoke=="no"],main="Age vs LungCap no Smoke",xlab="Age",ylab="LungCap",pch=16,las=1,col=4)
# plot for the smokers
points(Age[Smoke=="yes"],LungCap[Smoke=="yes"],pch=17,col=2)




# legend and lines for the plot
# legend for plot character
legend(4,14,legend=c("Non-Smoke","Smoke"),col=c(4,2),pch=c(16,17),bty="n")
# legend for line type
legend(4,14,legend=c("Non-Smokers","Smokers"),lty=1,col=c(4,2),bty="n")
lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3)
lines(smooth.spline(Age[Smoke=="yes"],LungCap[Smoke=="yes"]),col=2,lwd=3)


# different types of lines

# extra codes
plot(Age,Height,main='Age vs Height',las=1)
legend(4,14,legend=c("Non-Smoke","Smoke"),col=c(4,2),pch=c(16,17))
lines(smooth.spline(Age[Smoke=="no"],LungCap=="no"),col=4,lwd=3)


line(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3)
line(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4)

legend(x=3,y=14,legend=c("Non-Smoke","Smoke"),fill=c(4,2))
