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
mean = 1 / p
variance = (1 - p) / (p ^ 2)
mean
variance