#Basics of Factor::

region<-factor(c("East","East","West","North","West","South","North","West","East","South"))
region      #Default allocation of levels is done ascending order:


#Levels in Factors:
region1<-factor(c("East","East","West","North","West","South","North","West","East","South"),
                levels = c("E","W","N","S"))
region     #Contents in Levels must be in the Original factor:

region2<- factor(c("East","East","West","North","West","South","North","West","East","South"),
                 levels = c("East","West","North","Central","South"))
region2


#Labels in Fact0r:
region3<- factor(c("East","East","West","North","West","South","North","West","East","South"),
                 levels = c("East","West","North","Central","South"),
                 labels = c("E","W","N","C","S"))
#Creates an Label for the Factor list; only should be in the order:
region3

Gender<-factor(c("M","F","F","M","M"),
               levels = c("F","M","O"),
               labels = )

f1<-factor(c("Red","Red","Yellow","Green","Red","Green"))
f1[7]<-"Blue"
