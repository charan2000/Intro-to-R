str<-'Data Science'
str
str2<-"Data Science's new developments are improving day by day!"
str2
str3 <-'Data Science " is a specialization course in CSE'
str3

#String Manipulation:
x="Data"
y = "Science"

paste(x,y)
#sep is space
paste(x,y,sep = '$')
z= "Machine Learning"
paste(x,z,y,sep=' ',collapse = " ")
strlist=c("Don't", "Neglact","Anything","you","mayloose","Some","important","Anouncements")
paste(strlist,collapse = "-")


#Format: OutPut in the Character form or String: 
format(c(56.345,46.233,89.67,567.6657),digits = 4)
format(94.4526620,nsmall=3)#After decimal number of digits 5.
format(10)
length(format(56.5676,width=11,justify = "r"))
length(format(c("LPU","Is better"),digits = 2))






#Substring:

substring("Welcome to the Data Science Course:",16,28)





















