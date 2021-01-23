# user Defined funtions:

f1 <-function(v1){
  for(i in 1:v1){
    sum=i+2
    print(sum)
  }
}

f1(5)

f2 <- function(v1){
  sum =v1+2
  print(sum)
}

f2(45)

f3 <-function(x,y,z){
  a=x
  b=y
  z=a+b
  print(z)
}

#Lazy Function:
f4 <- function(x,y,z){
  cat('X is ',x*5,'\n')
  cat('Y is',y,'\n')
  cat('z is',z+6)
}

f4(1,8,9)








