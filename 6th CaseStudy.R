data<-read.table("D:/SEM 3/R PROGRAMMING/casestudy8.txt ",header=TRUE)
summary(data)

#read data
x1 = data$Year
x2 = data$APMAM
x3 = data$APSAB
x4 = data$APSLAKE
x5 = data$OPBPC
x6 = data$OPSLAKE
x7 = data$BSAAM

#stem and leaf
stem(x1)
stem(x2)
stem(x3)
stem(x4)
stem(x5)
stem(x6)
stem(x7)

#plot
plot(x1, x2, xlab = "YEAR", ylab ="APMAM"    , col = "orangered" )
plot(x1, x3, xlab = "YEAR", ylab = "APSAB"   , col = "orangered" )
plot(x1, x4, xlab = "YEAR", ylab ="APSLAKE"  , col = "orangered" )
plot(x1, x5, xlab = "YEAR", ylab = "OPBPC"   , col = "orangered" )
plot(x1, x6, xlab = "YEAR", ylab = "BSAAM"   , col = "orangered" )

#covariance
cov(x1,x2)
cov(x2,x3)
cov(x3,x4)
cov(x1,x1)
cov(x5,x6)
cov(x1,x6)

#correleation
cor(x1,x2)
cor(x2,x3)
cor(x3,x4)
cor(x1,x1)
cor(x5,x6)
cor(x1,x6)

#linear regression
linear = lm( x1 ~ x2 )
linear

#mutiple regression
model = lm( x1 ~ x2 + x3 + x4 + x5 + x6 + x7 )
model



