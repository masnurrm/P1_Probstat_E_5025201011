lambda = 4.5

# Poin A
x = 6
probability = dpois(x, lambda)
probability

# Poin B
x = 6
n = 356
hist(rpois(n, lambda), main = "Histogram Poisson")

#Poin C
# Penjelasan terdapat pada writeup dokumentasi readme.md

# Poin D
mean = variance = lambda
mean
variance