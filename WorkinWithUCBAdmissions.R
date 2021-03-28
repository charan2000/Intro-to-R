data("UCBAdmissions")
View(UCBAdmissions)
ucb = data.frame(UCBAdmissions)
str(ucb)
library(sqldf)
sqldf("Select * from ucb")

?UCBAdmissions
#Return Female admissions
sqldf("Select * from ucb where Gender = 'Female'")

# ? Return data of admitted students and 
 #?arrange based on frequency in descending order
sqldf("Select * from ucb where Admit='Admitted' order by Freq DESC")

## No. of Departments in the Dataset
sqldf("SELECT DISTINCT Dept, COUNT(Freq) from ucb 
      where Admit='Rejected' AND Gender='Female' group by Dept")

##Return rejected Female
sqldf("SELECT sum(Freq) as TOTAL from ucb 
      where Admit='Rejected' AND Gender='Female'")

sqldf("Select Dept, avg(Freq) as Average from ucb 
      where Admit='Admitted' group by Dept")


##Creating a new table
majors <- data.frame(
          major=c('math','biology','engineering','computer',
                  'history','architecture'),
          Dept = c(LETTERS[1:5],"Other"),
          Faculty = round(runif(6,min=10,max=30)))
runif(6,min=10,max=30)
runif(4) # Default values of min,max = 0,1
majors

## Wild Card match queries
sqldf("Select * from majors where Faculty between 15 AND 22")
sqldf("Select * from ucb where Gender LIKE '__ma%'")

## SubQuery
# which dept has the most admitted students
sqldf("select * from ucb where Freq = (select max(Freq) 
      from UCB where Admit = 'Admitted')")
#or
sqldf("Select Dept,sum(Freq from ucb")
