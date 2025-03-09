print(100:150)

#This is my first R lab

#To get the current working directory
getwd()

#To change the current working directory
setwd("D:\\USER\\Desktop\\SLITT\\Year 2 Semester 2\\PSA_R\\Lab1")

#help
?solve

help("data.frame")

#install packages
install.packages("ggplot2")

#Scalar operators
2+8
900-76
50*6
50/4

4^2
4**2

601%%2

601%/%2
601/2

#Logical operators
x=5
y=-4

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x<=y)
isTRUE(x!=y)


#assigment operators
#local environment - two types = ,  <-
a=5
a <- 5
#global environment - one type  <<-  (used in functions)
b <<- 5

#vector
w <- c(1,2,3,4,5)
w
class(w)

r <- c("a","b","c")
r
class(r)

#factor
gender <- c(0,1,0,1,0,0,1)
gender

Gender <-factor(gender,c(0,1),c("Male","Female"))
Gender

class(Gender)


#lists
p <- c(1,2,3)  
q <- "green"
r <- 21

p
q
r

Data <- list(p,q,r)
Data
class(Data)


#matrix

matrix1 <- matrix(c(1,2,3,4),nrow = 2, ncol=2, byrow = TRUE)
matrix1

class(matrix1)

matrix2 <- matrix(c(1,2,3,4),nrow = 2, ncol=2, byrow = FALSE)
matrix2
class(matrix2)


#data frame
height <- c(67,89,43,90)
weight <- c(56,34,49,67)

#then pass these two vectors to a data frame

data_set <- data.frame(height,weight)
data_set




