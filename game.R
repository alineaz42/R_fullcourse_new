game = function(a,b,c){
  if (a>b & a>c){
    print("A is the greatest")
    return(a)
  }else if (b>a & b>c){
    print("B is the greatest")
    return (b)
  }else{
    print("C is the greatest")
    return(c)
  }
}
game(232,534,23)
game2 = function(x,y,z){
  if (x>y){
    if(x>z){
      print("X is the greatest")
      return(x)
    }else if(y>x){
      if(y>z){
        print("Y is the greatest")
        return(y)
      }else{
        print("Z is the greatest")
        return(z)
      }
    }
  }
}
game2(45474,744,87)
game(34,3543,34)

x <- seq(1,10)
y <- c(10,15,12,10,18,15,17,25,14,20)
plot(x,y,main="The plot of x and y",las=1)
ab <- lm(y~x)
abline(ab)
