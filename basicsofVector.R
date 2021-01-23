x<-c(4,7,2,6,12,5,23,20)
y<-1:10; y







#Access the elements of the Vector:
x<- c(7,6,5,6,3,5,9,2,20,25);x
y<- 1:10;y
z<- -2:8.5;z

x[3]
x[c(1,3,5,7,9)]      #Set of indexes:
x[4:8]               #Slicing of indexes:  

x<-c(7,6,5,6,3,5,9,2,20,25);x           #Logical Indexing for

x[c(T,F,T,T,T,F,T,F)]


x[-5]
x[c(-5,-7,-9)]

#Using 0/1 Indexing:

x[c(1,0,0,1,1,1,0,1,0,1,0,0,1)]
x[c(1,0,0,1,1,1,0,1,0,1,0,0,1,2)]

#Vector Manipulation:
v1<-c(7,8,9,4,5,2);v1
v2<-c(10,20,30,56,87,54);v2     #If length doesn't matches that particular, 
                                    #vector will repeat from the beginning to sum.

addvec<-v1+v2; addvec   #Addition of Vectors:
addvec
subvec<-v2-v1;subvec
mulvec<-v1*v2;mulvec
(divvec<-v2/v1)
(modvec<-v2%%v1)
(quovec<-v2%%v1)

#Vector element Recycling
#When my vectors are of unequal length
v3<-c(10,20,30,56,87,99,95)
v4<-c(6,34)
v3+v4

#Vector Sorting
(sortvec<-sort(v3,decreasing = T))






