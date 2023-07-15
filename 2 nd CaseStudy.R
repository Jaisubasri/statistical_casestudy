DATA<-read.table("D:/SEM 3/R PROGRAMMING/casestudy3.txt" , header = TRUE)
summary(data)

#READ DATA
x1 = DATA$Condition
x2 = DATA$Rating

#STEM AND LEAF
stem(x1)
stem(x2)

#scatterplot
plot(x1, x2 ,xlab="Condition" ,ylab="Rating" ,col="magenta")

#histogram
hist(x1, xlab="Condition", col="pink",main="HISTOGRAM")
hist(x2, xlab="Rating", col="pink",main="HISTOGRAM")

#covariance
cov(x1,x2)

#correleation
cor(x1,x2)

#linear regression
linear =lm(x1~x2)
linear
