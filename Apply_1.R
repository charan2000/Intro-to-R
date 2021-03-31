?apply

# Important points
#appply, lapply,sapply,tapply,mapply,vapply etc
#no seperate package requried as it is in base R,
#It allows to perform task repetitively,
# more faster then loops,
# even require less code to write,

# Create matrix
mat1 = matrix(1:30,nrow=10,ncol=3)
mat1
mean(mat1)
mean(mat1[,3])
sum(21:30)/10

#apply 
apply(mat1,2,mean) #margin 1 is for ROWS and 2 is for COLUMNS

newfunc <- function(x){
  sum(x)/length(x)
}
apply(mat1,2,newfunc)


#For Vector use lapply,sapply,vapply
v1<-20:30
v2<-31:40
v3<-41:50
lst1<-list(v1,v2,v3)
#Apply expects to have data to be 2 dimensions,
apply(v1,1,sum)# won't work

?lapply

lapply(lst1,mean)

#sapply
sapply(v1, sum)
sapply(lst1,sum)

#Vapply
vapply(v1,sum,numeric(1))
vapply(lst1,mean,numeric(1))
vapply(lst1,function(x) x+5,numeric(10))


?tapply

data = data.frame(cbind(1,1,2,2,1,2,1,2,2,1),mat1)
data









