

# Poin A
H0: miu1 = miu2 # (rata-rata saham di Bandung sama dengan di Bali)
H1: miu1 != miu2 # (rata-rata saham di Bandung tidak sama dengan di Bali)

# Poin B


# Poin C
# gapaham maksud df=2. maksudnya pake ANOVA apa gimana? soalnya asumsinya kurang kalo pake ANOVA
  
mean1 <- 3.64
mean2 <- 2.79
sd1 <- 1.67
sd2 <- 1.32
n1 <- 19
n2 <- 27
install.packages("BSDA")
library("BSDA")
tsum.test(mean1, sd1, n1, mean2, sd2, n2, alternative = "two.sided", mu = 0, var.equal = TRUE, conf.level = 0.95)

# Poin D
  
p-value < alfa = 0.05
  
  
# Poin E
# Karena p-value = 0.06 > alfa = 0.05, maka diputuskan gagal tolak Ho
  
# Poin F
#Dengan tingkat keyakinan 95%, diyakini bahwa tidak terdapat perbedaan rata-rata saham pada perusahaan di Bandung dan Bali.