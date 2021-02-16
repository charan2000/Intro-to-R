#Installing Packages 
install.packages("stats")
# Loading Packages
library(ggplot2)

#Read CSV
#Using Path
data = read.csv("C:/Users/bhavi/Desktop/Sem-6 Tableau/OLYMPICS SUMMER.csv")
View(data)

#Read Input from User
input <- readline("Enter Integer: ");
input

#User data input useing scan Function:
x1<-scan()
x1


d2<-read.csv(file.choose(),sep = ",", header = F)
head(d2)

#Write data from R to File formats
head(data)
View(d2)

df<-data.frame("Year"=c(1988,2009,1997),
               "City"=c("Jal","Kaal","Vja"),
               "State"=c("Pb","Hr","AP"),
               stringsAsFactors = T)

str(df)
View(df)
