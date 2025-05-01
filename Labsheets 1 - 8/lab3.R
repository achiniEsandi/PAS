setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab3")
getwd()


#Question 1

#Import the dataset
data_set <- read.csv("DATA 3.csv",header=TRUE)
fix(data_set)

#rename columns

names(data_set) <- c("Age","Gender","Accomodation")

#rename categorical data

data_set$Gender <- factor(data_set$Gender,c(1,2),c("Male","Female"))

data_set$Accomodation <- factor(data_set$Accomodation, c(1,2,3),c("Home","Boarded","Lodging"))

attach(data_set)


#Question 2

#frequency table
gender.freq <- table(Gender)

gender.freq

acc.freq <- table(Accomodation)
acc.freq

#using frequency tables we can create pie charts and bar graphs

#pie chart

pie(gender.freq,"Pie chart for Gender")

pie(acc.freq,"Pie chart for Accomodation")

#barplot for gender
barplot(gender.freq, main="Bar plot for Gender", ylab="Frequency")

#start x axis from 0
abline(h=0)



#barplot for accomodation
barplot(acc.freq,main="Bar plot for Accomodation",ylab="Frequency")
abline(h=0)


#boxplot

boxplot(gender.freq, main="Boxplot for Age", ylab="Age", outpch=8)

summary(Age)
quantile(Age)


#Question 3

#two way frequency table
gender_acc.freq <- table(Gender,Accomodation)
gender_acc.freq

#stack bar chart - on top of the other
barplot(gender_acc.freq,main="Bar plot for Gender and Accomodation", legend=row.names(gender_acc.freq))
abline(h=0)

summary(gender_acc.freq)

#clustered bar chart (side by side)
barplot(gender_acc.freq, beside = TRUE, main="Gender and Accomodation clustered bar chart",legend=row.names(gender_acc.freq))
abline(h=0)


#Question 4

#side by side boxplot

boxplot(Age~Gender, main="Boxplot for Age by Gender", xlab="Gender",ylab="Age", outpch=8)
tapply(Age, Gender, summary)


boxplot(Age~Accomodation, main="Boxplot for Age by Accomodation", xlab="Accomodation", ylab="Age", outpch=8)
tapply(Age, Accomodation, summary)


#Question 5

tapply(Age, list(Gender, Accomodation), mean)
#or
xtabs(Age~Gender+Accomodation)/(gender_acc.freq)


