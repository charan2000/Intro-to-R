#Factors in DataFrame:

gender<-c("Male","Male","Female","Female","Male","Male")
height<-c(132,151,162,170,122,166)
weight<-c(48,55,69,65,52,40)
new_factor<-data.frame(height,weight,gender)
str(new_factor)
newFactor1<-data.frame(height,weight,gender,
                       stringsAsFactors = T)
str(newFactor1)
