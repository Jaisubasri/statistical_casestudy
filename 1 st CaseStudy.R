data<-read.table("D:/SEM 3/R PROGRAMMING/casestudy2.txt",header=TRUE)
summary(data)

#read data
x1 = data$GRIP
x2 = data$ARM
x3 = data$RATINGS
x4 = data$SIMS

#STEM AND LEAF
stem(x1)
stem(x2)
stem(x3)
stem(x4)

#SCATTERPLOT

plot(x1, x2, xlab="GRIP" , ylab="ARM" , col="blue")
plot(x2, x3, xlab="ARM" , ylab="RATINGS" , col="blue")
plot(x3, x4, xlab="RATINGS" , ylab="SIMS" , col="blue")
plot(x2, x4, xlab="ARM" , ylab="SIMS" , col="blue")
plot(x1, x3, xlab="GRIP" , ylab="RATINGS" , col="blue")

#HISTOGRAM

hist(x1 ,xlab="GRIP",col="red" ,main="Histogram")
hist(x1 ,xlab="ARM",col="red" ,main="Histogram")
hist(x1 ,xlab="RATINGS",col="red" ,main="Histogram")
hist(x1 ,xlab="SIMS",col="red" ,main="Histogram")

#COVARIANCE

cov(x1,x2)
cov(x1,x3)
cov(x2,x4)
cov(x3,x4)
cov(x1,x4)

#CORRELEATION

cor(x1,x4)
cor(x2,x3)
cor(x1,x2)
cor(x2,x4)
cor(x3,x4)

#Linear Regression

linear = lm(x2~x3)
linear

linear = lm(x1~x3)
linear

linear = lm(x2~x3)
linear

#multiple regression

multiple = lm(x1~x2+x3+x4)
multiple

