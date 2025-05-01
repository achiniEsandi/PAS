getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab4")

#import the dataset

data_set <- read.table("DATA 4.txt",header=TRUE)
fix(data_set)

#rename columns
names(data_set) <- c("Team","TeamAttendance","TeamSalary","Years")

#boxplot
boxplot(data_set$TeamAttendance, main="Boxplot for Team Attendance", ylab="Attendance (millions)")
summary(data_set$TeamAttendance)


boxplot(data_set$TeamSalary, main="Boxplot for Team Salary", ylab="Salary (millions)")
summary(data_set$TeamSalary)


boxplot(data_set$Years,main="Boxplot for Years since stadium ownership", ylab="Years")
summary(data_set$Years)


#Histograms
hist(data_set$TeamAttendance, main="Histogram of Team Attendance", xlab="Attendance")

hist(data_set$TeamSalary, main=" Histogram of Team Salary", xlab="Salary")

hist(data_set$Years, main="Histogram of Years", xlab="Years")


#Stem-and-leaf plot
stem(data_set$TeamAttendance)
stem(data_set$TeamSalary)
stem(data_set$Years)


#Mean

mean(data_set$TeamAttendance)
mean(data_set$TeamSalary)
mean(data_set$Years)



#Median
median(data_set$TeamAttendance)
median(data_set$TeamSalary)
median(data_set$Years)


#Standard deviation
sd(data_set$TeamAttendance)
sd(data_set$TeamSalary)
sd(data_set$Years)


#First and Third Quartile
quantile(data_set$TeamAttendance,c(0.25,0.75))
quantile(data_set$TeamSalary,c(0.25,0.75))
quantile(data_set$Years,c(0.25,0.75))



#Interquartile range
IQR(data_set$TeamAttendance)
IQR(data_set$TeamSalary)
IQR(data_set$Years)


findOutliers <- function(x){
  Q1 <- quantile(x,0.25)
  Q3 <- quantile(x,0.75)
  IQR_value <- Q1-Q3
  lower <- Q1 - 1.5*IQR_value
  upper <- Q3 + 1.5*IQR_value
  x[x < lower | x > upper]
}


findOutliers(data_set$TeamAttendance)
findOutliers(data_set$TeamSalary)
findOutliers(data_set$Years)


find_mode <- function(x) {
  # Create a frequency table
  freq_table <- table(x)
  
  # Find the highest frequency
  max_freq <- max(freq_table)
  
  # Return all values that match the max frequency
  modes <- as.numeric(names(freq_table)[freq_table == max_freq])
  
  return(modes)
}


find_mode(data_set$Years)










