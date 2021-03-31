pvc <- read.csv(file.choose())
str(pvc)
mat_pvc <- as.matrix(pvc)
mat_pvc
str(mat_pvc)

# To Calculate max for every row
apply(mat_pvc,1,max)
mat_pvc

#Not using apply function
max(mat_pvc[1,])
max(mat_pvc[2,])
max(mat_pvc[3,])
max(mat_pvc[4,])
max(mat_pvc[5,])
max(mat_pvc[6,])
max(mat_pvc[7,])
max(mat_pvc[8,])

# Using For Loop 
for (i in 1:8){
  cal_max <- max(mat_pvc[i,])
  print(cal_max)
}




#Copid from Chat#
### tapply(x, index, function,...) ######
# tapply
stuid <- c(110,111,112,113,114,115,116,117,118,119)
stu_marks <- c(78,45,90,39,89,98,79,98,67,87)
stu_section <- c("A","B","B","A","A","B","B","A","B","A")
stu_gender <-c("M","M","M","F","F","M","O","O","M","F")
tapply(stu_marks,stu_gender,mean)


#For DataFrame
stu.df <- data.frame(STUDENT_ID =stuid,
                     MARKS = stu_marks,
                     SECTION=stu_section,
                     Gender = stu_gender)
stu.df
str(stu.df)
tapply(stu.df$MARKS,stu.df$Gender,mean)


############# MAPPLY FUNCTION #############
###### Multivarite version of sapply ######
x<- 1:10
y<- 11:20
z<- 21:30
mapply(sum,x,y,z)

