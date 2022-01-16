# vectors---------------------------------------------------
x1 <- c(1,2,3)
x2 <- c(4,3,2)
x3 <- c(6,4,2)
type(x1)
class(x1)

gender <- c("Male","Female")

x4 <- 1:10

# creating sequences
y1 <- seq(from=1,to=100,by=2)
y2 <- seq(1,10,1/3)
y3 <- seq(1,7,.25)

# vector of repeated numbers
y4 <- rep(1,times=5)
y5 <- rep("a",times=5)
y6 <- rep(1:3,5)
y7 <- rep(seq(1,5,.25),2)
y8 <- rep(c("M","F"),5)


# multiple vectors and manipulations
x <- 1:5
y <- c(3,2,4,5,2)
# ads 10 to every element similarly -,* and /,**
x +10



# if the length of two vector are same then we can do 
# +,-,* and / everything will be done element wise
x+y
x-y
x*y
x/y

# vector indexing
# find 3rd element of x
x[3]
# extract everything except the 2nd one
x[-2]
# from 2nd to 4th
x[2:4]
# 1st and 3rd element
x[c(1,3)]
# all element except 1 and 3
x[-c(1,3)]
# here x presents an image of x not the actual one
# only elements less than 3
y[y<3]
# similarly can be done for all comparison operators


# Matrix --------------------------------------------------------------
z <- c(5,4,3,2,1)

myMatrix <- matrix(x,y,z)
# the indexing are nearly same as vector
myMatrix[1,] # returns the first row
myMatrix[,1] # returns the first column
# similarly can be done for all the rows and columns
# negative index returns everything except the indexed elements
myMatrix[-1,]

# extract ij=23 element
myMatrix[2,3]
myMatrix[2,3] <= 4
# from a vector creating matrix
x <- 1:9
matA <- matrix(x,nrow=3,ncol=3,byrow=T)
# if byrow = F (it is the default one. No need to provide it)


x <- 1:9
matA <- matrix(x,3,3,byrow=T)

matA*2 # multiplies 2 in each element
# similarly can be done for add,sub and div

# rbind() and cbind()
id <- 101:103
names <- c("Rahim","Karim","Shelly")
marks <- c(43.43,54.2,43.44)
matA <- rbind(id,names,marks)
matA
# should be col bind
matB <- cbind(id,names,marks)
matB
# we should not do this cause if there is any character everything will be character
gender <- c("M","F","F")
matB <- cbind(matB,gender)
matB
# we should do this in dataframe