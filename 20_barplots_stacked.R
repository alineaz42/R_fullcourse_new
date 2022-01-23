# bar plot and mosaic plot

head(df)


table1<-table(Smoke,Gender)
barplot(table1,beside = T)
barplot(table1,beside=T,legend.text=c("Non-smoker","Smoker"),main="Title",las=1,
  col=c(4,2),
  xlab="Gender"
  )



# mosaic plot
