

pnorm(70,75,5,lower.tail = T)

pnorm(85,75,5,lower.tail=F)


pnorm(0)
pnorm(-1)+pnorm(-1,lower.tail=F)


qnorm(.25,lower.tail = T)

x <- seq(55,95,.25)
plot(x)

x
dens <- dnorm(x,75,5)
plot(dens)

plot(x,dens,pch=16,col=4,main="x~N(75,5)",ylab="Probability Density",las=1,
     col.main=4,col.lab=4,cex.lab=1.4
     )
abline(v=75,col=4,lwd=3)
dens
