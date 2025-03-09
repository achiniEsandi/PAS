setwd("D:\\USER\\Desktop\\SLITT\\Year 2 Semester 2\\PSA_R\\Lab3")
getwd()

#import dataset
data1 <- read.csv("DATA 3.csv",header=TRUE)
fix(data1) #opening editor mode
data1 #opening in console


#rename columns
names(data1) <- c("Age","Gender","Accomodation")

#rename catergorical data
data1$Gender<-factor(data1$Gender,c(1,2),c("Male","Female"))

data1$Accomodation<-factor(data1$Accomodation,c(1,2,3),c("Home","Boarded","Lodging"))

#attaching the modifications into the imported set
attach(data1)


#Question 2
#frequency table
gender.freq<-table(Gender)
acc.freq<-table(Accomodation)

gender.freq
acc.freq

#pie chart
pie(gender.freq,"Pie chart for Gender")

pie(acc.freq,"Pie chart for Accomodation")


#barplot
barplot(gender.freq, main="Barplot for Gender",ylab="Frequency",xlab="Number of students")

#start x axis from 0
abline(h=0)

barplot(acc.freq,main="Barplot for Accomodation",ylab="Frequency")
abline(h=0)

#boxplot
boxplot(Age, main="Boxplot for Age",ylab="Age",outpch=8)

#Question 3
#Two way frequency table
gender_acc.freq <- table(Gender,Accomadation)

gender_acc.freq

#stack bar chart
barplot(gender_acc.freq, main="Gender & Accomodation", legend=row.names(gender_acc.freq))
abline(h=0)


#clustured bar chart
barplot(gender_acc.freq,beside=TRUE,main="Gender & Accomodation", legend=row.names(gender_acc.freq))
abline(h=0)

#Question 4
#side by side boxplot
boxplot(Age~Gender, main="Boxplot for Age by Gender",xlab="Gender",ylab="Age")

boxplot(Age~Accomodation, main="Boxplot for Age by Accomodation",xlab="Accomodation",ylab="Age")

#Question 5
xtabs(Age~Gender+Accomadation)/gender_acc.freq



