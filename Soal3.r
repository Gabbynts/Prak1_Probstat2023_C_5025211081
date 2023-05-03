# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 3

# Diketahui nilai x = 3 dan v = 10. Tentukan:

# --a
# Fungsi probabilitas dari distribusi Chi-Square.

x <- 3
v <- 10

dchisq(x, v)

# --b
# Histogram dari distribusi Chi-Square dengan 500 data acak.

n <- 500

val <- rchisq(n, v)

hist(val, main = "Histogram Distribusi Chi-Square", xlab = "Nilai", ylab = "Frekuensi")

# --c
# Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

# Nilai rataan 
v

# Mencari nilai varian
2 * v
