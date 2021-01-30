
(mat<-matrix(1:6,nrow=3))
class(mat)
typeof(mat)
attributes(mat)
dim(mat) #Dimensions

(mat <- matrix(1:9,nrow=3,ncol=3,byrow = T,dimnames = list(c("R1","R2","R3"),
                                                            c("C1","C2","C3"))))

#Row Names from Matrix
rownames(mat)
colnames(mat)
colnames(mat)<-c("Col!","Col@","Col#")

#Assign col names or Row names after creating Matrix
rownames(mat)<-c("Row!","Row@","Row#")
mat
rownames(mat)<-c("Row1","Row2")
rownames(mat)

#Accessing elements of Matrix
mat
mat[,]
mat[,1:2]
mat[3,3]
mat[c(1,3),]
mat[c(1,3),2]
mat[1,3]
mat

#Matrix Multiplication
m1<-matrix(c(4,-10,9,5,6,8),nrow=2,byrow=T)
m1
m2<-matrix(10:15,nrow=2)
m2
m3<-m1+m2
m3
