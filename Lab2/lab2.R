getwd()
setwd("D:/USER/Desktop/SLITT/Year 2 Semester 2/PSA_R/Lab2")

#Control Statements
#if

x <- 4
print(x)

if(x>0){
  print("It is a positive number")
}

#if else
x <- 7
y <- -2


if(y>0){
  print("Positive number")
}else{
  print("Negative number")
}


#Nested if
x <- 2

if(x>0){
  print("Positive number")
}else if(x<0){
  print("Negative number")
}else{
  print("Zero")
}

#While loop
i <- 1
while(i<6){
  print(i)
  i = i+1
}

#To print a range
7:11  #7 and 11 included

#for loop (1-5)
for(i in 1:5){
  print(i)
}

#csv and text files

data1 <- read.csv("DATA 2.csv")
fix(data1)
data1

data2 <- read.table("DATA 2.csv", header=TRUE, sep=",")
fix(data2)
data2

#export

index <- c(1,2,3)
Name <- c("Kamal","Nimal","Sunil")
marks <- c(23,56,74)

#dataFrame

dataFrame <- data.frame(index,Name,marks)
dataFrame

write.csv(dataFrame,"dataFrame1.csv")
write.table(dataFrame,"dataFrame1.txt")


#functions

function_1 <- function(a,b){
  y <- a+b
  print(y)
}


function_1(4,8)


#Compute the real roots of the quadratic equation
#in the form of 𝑎𝑥2 + 𝑏𝑥 + 𝑐 = 0.

quadRoots <- function(a,b,c){
  x1 <- (-b + sqrt(b^2 - 4*a*c ))/2*a
  x2 <- (-b - sqrt(b^2 - 4*a*c ))/2*a
  
  print(x1)
  print(x2)
}

quadRoots(2,3,1)

#real roots for quadratic equation 2x^2+3x+1 = 0

#2. Without using R, determine the result of the following computation
x <- c(1,2,3)
x[1]/x[2]^3-1+2*x[3]-x[2-1]


#4. Consider the vector 1:K, where K is a 
#positive integer. Write an R command that 
#determines how many elements
#in the vector are exactly divisible by 3.

#1:K
#K = 20

vec1 <- c(1:20) #3,6,9,12,15,18
sum(vec1%%3==0)

#6. Write a loop structure to scan through
#an integer vector
#to determine the index of the maximum value.

data3 <- c(24,67,45,23)
max <- 0
maxIndex <- 0

for(i in 1:length(data3)){
  if(max<data3[i]){
    max <- data3[i]
    maxIndex <- i
  }
}

print(max)
print(maxIndex)

#7. Do the same without using a loop.

which.max(data3)

#question 8

A <- 0

moneyOwed <- function(P,R,n){
  for(i in 1:n){
    A = P * ((1 +(R/100))^i)
    print(A)
  }
}

moneyOwed(5000,11.5,15)





