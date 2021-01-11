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
#Class gives the type of the 
#Frequently used DATATYpes;;;;
#Vectors
#Factors
#Lists
#Matrices
#Arrays
#DataFrames

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




