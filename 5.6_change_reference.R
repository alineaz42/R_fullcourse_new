help("relevel")
# working on the LungCapData
mod1 <- lm(LungCap~Age+Smoke)
summary(mod1)
qf(0.05,3,722,lower.tail = F)


# was checking on the function----------------
# a =function(a,b){
#   sam = a+b
#   return(sam)
# }
# 
# a(14,7)


Smoke[1:20]
table(Smoke)
Smooke <- relevel(Smoke,ref="yes")
table(Smooke)
mod2 <- lm(LungCap~Age+Smooke)
summary(mod2)
# This is known as reparameterizing a model