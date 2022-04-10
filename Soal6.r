n = 100
mean = 50
sd = 8

# Poin A
set.seed(1)
data <- rnorm(n, mean, sd)
data
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))
x1
x2

probability1 <- pnorm(x1, mean, sd)
probability2 <- pnorm(x2, mean, sd)
probability1
probability2

probability <- probability2 - probability1
plot(data)

# Poin B
breaks = 50
hist(data, breaks, main = "5025201011_Nur Muhammad Ainul Yaqin_Probstat_E_DNhistogram")

# Poin C
variance = (sd(data)) ^ 2
variance