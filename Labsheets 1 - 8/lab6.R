getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab6")

#Question 1

data_set <- read.table("Forest.txt", header=TRUE, sep=",")
fix(data_set)

attach(data_set)

#Question 2
#give the summary of the structure of the dataset

str(data_set)


#Question 4
max(wind)
min(wind)


#Question 5
summary(temp)


#Question 6
boxplot(wind, horizontal = TRUE, outline= TRUE, pch=16)

boxplot(wind)

#Question 7
#negative distribution

#Question 8
median(temp)


#Question 9
mean(wind)
sd(wind)


#Question 10
IQR(wind)


#Question 11
#2 way frequency table per day and month

freq <- table(day,month)
freq

freq <- table(month,day)

#Question 12

mean(temp[month=="sep"])

#Question 13
count <- table(day[month=="jul"])
count

names(count[count==max(count)])


