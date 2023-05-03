# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 1

# Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. 
# Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:

# --a
# Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.

p <- 0.488 
n <- 10 

k <- 0:n 

dbinom(k, n, p)

# --b
# Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?

k <- 3

dbinom(k, n, p)

# --c
# Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?

k <- 0:2 

pbinom(k, n, p)[3]

# --d
#  Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?

k <- 2

val <- pbinom(k, n, p)

1 - val

# --e
#  Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

# Mencari nilai harapan
n * p 

# Mencari nilai simpangan baku
sqrt(n * p * (1 - p))

# --f
# Gambarkan histogram pendistribusian banyak bayi laki-laki.

hist(rbinom(100, n, p), main = "Histogram Distribusi Bayi Laki-laki", xlab = "Banyak Bayi Laki-Laki", ylab = "Frekuensi")
