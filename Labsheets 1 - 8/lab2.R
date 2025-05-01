getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab2")

#control statements

x<- -4
if(x>0){
  print("It is a positive number")
} else if (x<0){
  print("It is a negative number")
} else{
  print("X is zero")
}

#while loop
i <- 1
while(i<6){
  print(i)
  i = i+1
}

for (i in 1:5){
  print(i)
}

#csv and text files

data1 <- read.csv("DATA 2.csv")
data1
fix(data1)



data2 <- read.table("Data1.txt",header=TRUE,sep=",")
data2
fix(data2)


#export
index <- c(1,2,3)
Name <- c("Kamal","Nimal","Sunil")
marks <- c(23,56,74)

dataFrame <- data.frame(index,Name,marks)
dataFrame

write.csv(dataFrame,"dataFrame.csv")
write.table(dataFrame,"dataFrame.txt")
getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab2")

#functions

function_1 <- function(a,b){
  y <- a+b
  print(y)
}

function_1(10,20)

#question 4
k <- 20
vector1 <- c(1:k)
vector1

sum(vector1%%3==0)

#question 6

intVec <- c(10,220,320,210,321)
max <- 0
maxIndex <- 0

for(i in length(intVec)){
  if(max<-intVec[i]){
    max<-intVec[i]
    maxIndex <- i
  }
}

max
maxIndex


#question 7
which.max(intVec)

#A=?, P=5000, R=11.5, n=15

moneyOwed <-function(P,R,n){
  for(i in 1:n){
    A = (P * (1+R/100)^i)
    print(A)
  }
  
}

moneyOwed(5000,11.5,15)










