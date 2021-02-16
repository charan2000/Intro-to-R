data()
df = AirPassengers
View(AirPassengers)
str(AirPassengers)

df2 = ChickWeight
View(df2)
str(df2)

res<-subset(df2, Chick>16)
nrow(res)
View(res)

res2<-subset(df2, weight>100 & Diet=='3')
res2

#Installing Painters package
install.packages("MASS")
library(MASS)
df3<-painters
View(df3)

#Installing ReadXL packages to read from the Excel files.
install.packages("readxl")
library(readxl)
df4<-read_excel(file.choose())
View(df4)
str(df4)

val<-subset(df4,'Order Date'>"12/12/2018")
val
