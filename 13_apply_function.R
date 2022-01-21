# to apply a function #to all rows or columns of a data frame. The apply function essentially is a specialized loop function, although it is more efficient than a simple for-loop. we will also learn the use of the "ColMeans", "ColSums", "RowMeans", and "RowSums" functions in R.
# load the dataframe
stockPrice <- read.csv(file.choose(),header=T)


# apply functions

apply(
  stockPrice,
  FUN = mean,
  na.rm=T
)

stockData<-stockPrice[,-1]
apply(
  stockData,
  FUN = mean,
  MARGIN = 2,
  na.rm=T
)
apply(
  stockData,
  max,
  MARGIN=2,
  na.rm=T
)
apply(stockData, 2,FUN=quantile,probs=c(0.2,0.8),na.rm=T)
apply(
  stockData,
  2,
  FUN = plot,type="l",
  main="Stock",
  ylab="Price",
  xlab="Day",
  na.rm=T
)
# colmean for stockData
colMeans(stockData,na.rm=T)
rowMeans(stockData)
meanData <-rowMeans(stockData,na.rm=T)
plot(rowMeans(stockData,na.rm=T),main="Stock Means Per Day",ylab="Price",xlab="Day")
plot(meanData,type="l",main="Stock Price Per Day",ylab="Price",xlab="Day")



lcd <- read.table(file.choose(),header = T)
head(lcd)
attach(lcd)
length(Age)
apply(Age,1, FUN=mean)
head(Age)
