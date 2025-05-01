getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab8")

data1 <- read.table("Data - Lab 8.txt", header=TRUE)
fix(data1)
attach(data1)

#changing data structure to horizontal way
data1 <- data1[[1]]
data1

#Q1
mean(data1)
var(data1)
sd(data1)


#Q2
s <- sample(data1,5)  #one random sample
s

#empty vectors
samples <- c()
n <- c()

for(i in 1:30){
  s <- sample(data1,5)
  samples <-cbind(samples,s)
  n <- c(n,paste('S',i))
}

colnames(samples) <-n
samples


s.means <- colMeans(samples)
s.means

s.vars <- apply(samples,2,var)
s.vars


#Q3
mean(s.means)
var(s.means)


#Q4
mean(data1)
mean(s.means)
# two values are approximately equal

#Q5
var(data1)
var(s.means)


