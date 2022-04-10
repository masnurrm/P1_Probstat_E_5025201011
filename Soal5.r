lambda = 3

# Poin A
set.seed(1)
rnorm(1)
probability = dexp(1, rate = lambda)
# probability = rexp(1, rate = lambda)
probability

# Poin B
set.seed(1)
hist(rexp(10, rate = lambda), main = "Histogram Exponetial with 10 Random Generations")
hist(rexp(100, rate = lambda), main = "Histogram Exponetial with 100 Random Generations")
hist(rexp(1000, rate = lambda), main = "Histogram Exponetial with 1000 Random Generations")
hist(rexp(10000, rate = lambda), main = "Histogram Exponetial with 10000 Random Generations")

# Poin C
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
variance = (sd(rexp(n, rate = lambda))) ^ 2
mean
variance