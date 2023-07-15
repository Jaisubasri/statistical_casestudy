data<-read.table("D:/SEM 3/R PROGRAMMING/casestudy4.txt" , header = TRUE)
summary(data)

#read data
x1 = data$W
x2 = data$Score

#stem and leaf
stem(x1)
stem(x2)

#scatter plot
plot(x1 , x2 , xlab="W" , ylab="Score" , col="blue")

#histogram
hist(x1,xlab="W",col="yellow",main="HISTOGRAM")
hist(x2 ,xlab="Score",col="yellow",main="HISTOGRAM")

#COVARIANCE
cov(x1,x2)

#correlation
cor(x1,x2)

#linear regression
linear = lm(x1~x2)
linear
