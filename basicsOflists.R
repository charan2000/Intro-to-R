x1 <- list("a"=2.5,"b"=TRUE,"c"=1:3, "d"="Hello","e"=54:60)
x1

#Structure
str(x1)

x<- list(2.5, TRUE,1.3,"Hello",54:60,5+8i)

#Give Names to elements of list
names(x)<-c("no1","log","Seq1","Str","Seq2")

#Adding Data to list
x[7]<- "New Data"

#Remove Data from a list
x[6]<-NULL
x

#Update the Existing Data
x$seq1<-20:25
x[[8]]<-c(20,30,80)
x[[8]][3]<-888
x

#Exclude index 2
x[-2]
#Using index value which is not there will  be replicated by 
# seq of logical vector
x[c(T,F)]  #x[c(t,f,t,f,t,f,t,f)]

#Using Character Vector
x[c("mo1","no2")] #Minus will not work with char vector
x[-c(1,3)] #exclude 1st and 3rd index value

typeof(x["str"])  #Single [returns a list]
x[["str"]]
typeof(x[["str"]])
x$Seq1
x[[3]]
x[["Seq1"]]  #Same result as of above

# Create List
l1 <-list("s.no."=1.36)
l2<- list("Fruits"=c("Orange","Banana","Apple"))
# Merge List:
l3<-c(l1,l2)
l3

#Convert List to Vector
list1<- list(1:25)
typeof(list1)
list2<-list(51:75)

v1<-unlist(list1)   #List to Vector
typeof(v1)
v2<-unlist(list2)
v3<-v1+v2
v3
