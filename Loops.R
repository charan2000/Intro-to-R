#Looping Statements
# --> Repeat:
# Syntax : 
# repeat{
#   command
#       if (cond){  break  }
#}

vec = 1:6
cnt = 1
repeat{
  print(vec)
  cnt = cnt+1
  if(cnt>6){
    print("Statement Broken")
    break
  }
}

#for loops:
v = c('a','g','c','h','o')
vec=0:5
for(i in v)
{
  print(i)
}

seq(20,40,by=4)









