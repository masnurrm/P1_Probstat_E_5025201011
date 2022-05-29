n = 20
p = 0.2

# Poin A
x = 4
probability = dbinom(x, n, prob = p, log = FALSE)
probability

# Poin B
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram of Binomial")

# Poin C
mean = n * (prob = p)
variance = n * (prob = p) * (1 - (prob = p))
mean
variance 