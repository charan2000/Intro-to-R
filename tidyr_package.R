library(tidyr)
bill_data <- read.csv(file.choose())
bill_data1 <- bill_data
str(bill_data1)
bill_data$Date <- as.Date(bill_data$Date,format="%d-%m-%y")
View(bill_data1)
str(bill_data)


#Gather

gather <- gather(bill_data,Bill_type,Bill_amount,gasbill:waterbill)
View(gather)

#Spread

unpivot <- spread(gather,Bill_type,Bill_amount)
View(unpivot)

## unite ##

dataunite <- unite(bill_data,"Location",c(city,state),sep=";")
dataunite

datasep <- separate(dataunite,Location,c("city","state"),sep=";")
datasep
