# Introduction to R modeling
# Basic fuction

# Stala
a <- 10

# Generowanie wektorów
x <- seq(1,a^2, by=0.5)
y <- c( abs(rnorm(length(x),0,1)))
train=data.frame(x,y)

# Model
model <- lm(y~x, train)

# Rysowanie
plot(train, pch=16)
abline(model)
