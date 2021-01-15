mstr1<-"Hello bud"
mstr1
"hello Buddy"->mstr2
mstr3 = "Hello LPU"
mstr3
# R doesnt support multi-line command, So to do multi line command we use If loop

if (FALSE){
  "This is just an example for R multi-line commands; 
  like the above!"
}

#Assignment Operators are: ->, <-, ->>, <<-, =   ;


#Class gives the type of the 
#Frequently used DATA Types;;;;
#Vectors
#Factors
#Lists
#Matrices
#Arrays
#Data Frames

var1 = 159.23L
print(var1)
class(var1)
var2 = 152L
var2
class(var2)

#Raw Data type
v3= charToRaw("hello")
v3
class(v3)
v4 = charToRaw("Gone voyague")
v4
class(v4)

#ComplexData Type
v5 = 3+7i
v6 = 8
v7 = 9+3i
v5 + v6
v6+v7
v7+v5

#Vectors
vec1 = c(5,6,2,8,9,4)
vec1
class(vec1)

#Lists

l1 <- list(12.5,67,"Hello bud")
l1
typeof(l1[3])

l2 = list(c(15,18,39),c("Mali","Parker"),l1,45,67)
l2
l2[[1]]
l2[2]

# Matrices: By default matrix insert values in columns;
m=matrix(c(78,44,89),nrow=6,ncol = 9,byrow = T)
m

# Arrays
#dim = c(row,c0l,dimension)
a = array(c(29,34,54,44),dim = c(3,2,4))
a
a1 = array(1:25,dim = c(3,2,4))
a1

#Factors

f = factor(c("Orange","grape","Mango","Apple","Mango","Gouva","Orange","Grape"))
f
gender = c('f','m','m','f','other')
f1 = factor(gender)
f1

#Data Frame:
d = data.frame(regno=c(1,2,3,4,5),
               name=c('Amar','Ram','Vishnu','Chakri','Meena'),
               age=c(18,23,NULL,22,19))
d

#Cat Function:

vec = c(19,34,44,12)
print("Vector value is:",vec)
cat("Vector value is:",vec,'\n',"Whats Updog")

# Remove:

ls()
rm(a1)
rm(list=ls())
ls()
