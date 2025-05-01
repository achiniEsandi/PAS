getwd()
setwd("C:\\Users\\Lenovo\\Desktop\\Y2S2\\PAS\\Lab5")


#import the dataset
data_set <- read.table("Data.txt",header=TRUE, sep=",")
fix(data_set)

#rename the columns
names(data_set) <- c("X1","X2")
attach(data_set)



#Question 1
hist(data_set$X2, main="Histogram for Number of shareholders", xlab="X2")



#Question 2
histogram <- hist(data_set$X2, main="Histogram for Number of shareholders", breaks = seq(130,270,length=8), right= FALSE)


#Question 3

#step 1 - Identify the break points
breaks <- round(histogram$breaks)
breaks

#step 2 - Identify frequencies of each class
freq <- histogram$counts
freq

#step 3 - Identiy the mid point of each class
mids <- histogram$mids
mids


#create empty vector
classes <- c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i-1],"]")
}


cbind(Classes = classes,Frequency=freq)


#Question 4
#draw in the same plot
lines(histogram$mids,freq)


#draw in the new plot
plot(mids,freq, type="l",main="Frequency polygon for number of shareholders", xlab="Shareholders", ylab="Frequency", ylim = c(0,max(freq)))


plot(mids,freq, type="o",main="Frequency polygon for number of shareholders", xlab="Shareholders", ylab="Frequency", ylim = c(0,max(freq)))

plot(mids,freq, type="p",main="Frequency polygon for number of shareholders", xlab="Shareholders", ylab="Frequency", ylim = c(0,max(freq)))




#Question 5

cum.freq <- cumsum(freq)
cum.freq  

#empty vector
new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks,new,type="l",main="Frequency polygon for number of shareholders", xlab="Shareholders", ylab="Cummalative frequency", ylim= c(0,max(cum.freq)))

cbind(Upper=breaks, cum.freq=new)






