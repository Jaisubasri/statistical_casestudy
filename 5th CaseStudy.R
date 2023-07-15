data <- read.table( "D:/SEM 3/R PROGRAMMING/casestudy6.txt", header = TRUE )
summary(data)

#read data
x1 = data$A
x2 = data$B
x3 = data$C
x4 = data$D
x5 = data$E
x6 = data$F
x7 = data$G
x8 = data$I
x9 = data$J

#stem and leaf
stem(x1)
stem(x2)
stem(x3)
stem(x4)
stem(x5)
stem(x6)
stem(x7)

#plot
plot(x1, x2, xlab = "COMPANY A" , ylab= "COMPANY B" ,col="purple" )
plot(x1, x3, xlab = "COMPANY A" , ylab= "COMPANY C" ,col="purple")
plot(x1, x4, xlab = "COMPANY A" , ylab= "COMPANY D" ,col="purple")
plot(x4, x5, xlab = "COMPANY D" , ylab= "COMPANY E" ,col="purple")
plot(x2, x3, xlab = "COMPANY B" , ylab= "COMPANY C" ,col="purple")

#covariance
cov( x1, x2 )
cov( x2, x3 )
cov( x3, x4 )
cov( x1, x1 )
cov( x5, x6 )
cov( x1, x6 )

#correlation
cor( x1, x2 )
cor( x2, x3 )
cor( x3, x4 )
cor( x1, x1 )
cor( x5, x6 )
cor( x1, x6 ) 

#linear regression
linear = lm( x1 ~ x2 )
linear

#multiple regression
model = lm( x1 ~ x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 )
model


