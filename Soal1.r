# Poin A
p = 0.2
x = 3
P <- dgeom(x, p)
P

# Poin B
mean(rgeom(n = 10000, prob = p) == 3)
mean

# Poin C


# Poin D
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')

# Poin E
mean = n * (prob = p)
var = n * (prob = p) * (1 - (prob = p))
mean
var