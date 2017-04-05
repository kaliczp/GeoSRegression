# Create a vector called x
x <- c(1, 2, 3)
# y = 2*x
y = 2 * x
# Visualisation
plot(x, y)
# x and y in the same unit
plot(x, y, asp = TRUE)
lines(x, y)
abline(a=0, b=2)
abline(b=2)
abline(0,2)
# Data frame
data.frame(x, y)
a <- data.frame(x, y)
# indexing
x[2]
x[2:3]
x[-1]
a[1, 2]
a[1, "y"]
a[1, ]
a[c(1,3),]
# Simulation for regression
set.seed(1)
a$y <- a$y +rnorm(3)
plot(a)
plot(y ~ x ,a, asp=TRUE)
lm(y ~ x ,a)
a.lm = lm(y ~ x ,a)
abline(a.lm)
summary(a.lm)
## Practice in 2017-04-05
## Normal distribution density
plot(dnorm)
curve(dnorm,-10,10, xlim=c(-10,10),ylim=c(0,0.7))
customdnorm <- function(x){dnorm(x, -2, 0.8)}
curve(customdnorm,-10,10, add=TRUE)
customdnorm <- function(x){dnorm(x, 2, 2)}
curve(customdnorm,-10,10, add=TRUE)
customdnorm <- function(x, m=3, s=1.5){dnorm(x, m, s)}

hist(rnorm(10),  5,  freq=F, xlim=c(-3,3))
curve(dnorm,-3,3, add=T)

## Recall regression
## Drop the intercept term
a.lm = lm(y ~ x - 1,a)
a.lm
summary(a.lm)

## Covariance and correlation
cov(x,y)
cor(x,y)
