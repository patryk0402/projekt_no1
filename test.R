a <- 20
x <- seq(a,2*a,by=1.0)
y <- c(rnorm(length(x),0,1))
z <- c(abs(rnorm(length(x),0,2)))

test <- data.frame(x,y)
test1<- data.frame(y,z)
test2<- data.frame(z,x)
plot(test,col="blue",pch=16)
par(new=TRUE)
plot(test1,col="red",pch=15)
par(new=TRUE)
plot(test2,col="greem",pch=14)

model <- lm(y~x+z,test)

summary(model)

x1 <- seq(-2,2,0.05)
x2 <- seq(-3,3,0.05)
y1 <- pnorm(x1)
y2 -<9 pnorm(x2,2,1)
