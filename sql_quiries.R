install.packages("sqldf")
library(sqldf)
employees<-read.csv(file.choose())
View(employees)
orders <- read.csv(file.choose())
View(orders)
str(employees)
str(orders)


### Multi-table Operations ###
# Left join employees with orders #

left_join <- sqldf("Select * from employees emp LEFT JOIN orders ord ON emp.id = ord.id")
View(left_join)
## No Right join in R, also there is an alternative to right join

right_join_equvi <- sqldf("Select * from orders ord LEFT JOIN employees emp ON ord.id = emp.id")

## Inner Join ##
inner_join <- sqldf("Select * from employees emp, orders ord where emp.id=ord.id")
View(inner_join)

# Matt G. wants to analyze Data :  Customers whose orders are less that $10/-  #

orders_lessthan_tenDollars <- sqldf("Select * from orders ord LEFT JOIN employees emp ON ord.id = emp.id 
                                     where ord.item_cost<10
                                     order by item_cost")
View(orders_lessthan_tenDollars)  ## Answer ##

### Analyze the data priced by piece ###
## Figure out who spend less than 20 dollars ##

#priced_piece <- sqldf("Select * from orders ord LEFT JOIN employees emp ON ord.id=emp.id
                   #   where ord.item_cost*ord.quantity_ordered < 20")
#View(priced_piece)#
# Answer 


## Details for lunch cost < 30 Dollars: ##
lunch_cost_30 <- sqldf("Select lastname, firstname, sum(quantity_ordered * item_cost)
as Total_cost from orders ord LEFT JOIN employees emp ON
ord.id=emp.id
Group by ord.id
Having Total_cost< 30")
View(lunch_cost_30)


### Keep Track of food consumption per person, find out the details for the persons
#eating less than average cost 

sub_queiry <- sqldf("Select sum(item_cost * quantity_ordered)/COUNT(DISTINCT id) as avg_lunch_cost from orders
                    where id!= 'NA'" )
sub_queiry