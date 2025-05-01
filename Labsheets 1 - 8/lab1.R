print(100:150)
#this is my first comment

getwd()

setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab1")

?solve
help("data.frame")
insall.packages("")

500%%3
500%/%3
500/3

#vector
w <- c(1,2,3,4)
w
class(w)


gender <- c(0,1,0,1,0,0,1)

GenderFactor <- factor(gender, c(0,1), c("Male","Female"))
GenderFactor
class(GenderFactor)


#list
p <- c(1,2,3)
q = "green"
r <- 21

Data <- list(p,q,r)
Data


class(Data)



#Matrix
matrix1 <- matrix(c(1,2,3,4,5,6), nrow =2, ncol = 3, byrow =TRUE)
matrix1
class(matrix1)


#data frame
height <- c(67,89,43,90)
weight <- c(56,34,49,67)

#then pass these two vectors to a data frame

data_set <- data.frame(height,weight)
data_set


name <- c("Dilshan","Esandi")
item <- c("Lolipop","Iskrem")
dataSet <- data.frame(name,item)
dataSet









