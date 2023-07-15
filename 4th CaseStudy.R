data<-read.table("D:/SEM 3/R PROGRAMMING/casestudy5.txt" , header = TRUE)
summary(data)

#read the data
x1= data$Score_1
x2= data$Score_2
x3= data$Change
x4= data$Active

#stem and leaf
stem(x1)
stem(x2)
stem(x3)
stem(x4)

#plot
plot(x1,x2,xlab="Score_1",ylab="Score_2",col="purple")
plot(x2,x3,xlab="Score_2",ylab="Change",col="purple")
plot(x1,x4,xlab="Score_1",ylab="Active",col="purple")
plot(x1,x3,xlab="Score_1",ylab="Change",col="purple")

#histogram
hist(x1,xlab="Score_1",col="cyan",main="Histogram")
hist(x2,xlab="Score_2",col="cyan",main="Histogram")
hist(x3,xlab="Change",col="cyan",main="Histogram")
hist(x4,xlab="Active",col="cyan",main="Histogram")

#covariance
cov( x1, x2 )
cov( x1, x3 )
cov( x1, x4 )

#correlation
cor( x1, x2 )
cor( x1, x3 )
cor( x1, x4 )

#linear regression
linear = lm( x1 ~ x2 )
linear

linear = lm( x1 ~ x3 )
linear

linear = lm( x1 ~ x4 )
linear

#multiple regression
multiple = lm(x1~x2+x3+x4)
multiple