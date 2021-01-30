(a1 <- array(1:15,dim=c(3,4,4)))
a1
v1<-c(1,5,7)
v2<-c(10,12,32,17,11,18)
(a2<-array(c(v1,v2),dim=c(3,3,4),
           dimnames = list(c('R1','R2','R3'),
                           c('C1','C2','C3'),
                           c('1D','2D','3D','4D'))))

a2[2,2,4]
a2[,,3]
v3<-c(10,32,50,44)
v4<-c(4,23,60,54,70,20)
(a3<-array(c(v3,v4),dim=c(3,3,2)))

#Create Matrices from a2 and a3:
(mat1<-a2[,,2])
mat2<-a3[,,2]
mat2

#Addition:
(result<-mat1+mat2)
(a2+a3) #Output is unconfortable arrays because of differnt size;


#Calculations across array elements:
#Apply Function apply(x,margin,fun).
#Margin = 1, means row, 2 means column.
apply(a3,1,sum)
a3
# OR
m1<-a3[,,1]
m2<-a3[,,2]
add=m1+m2
cat(sum(add[1,])," ",sum(add[2,])," ",sum(add[3,]))

    
    


