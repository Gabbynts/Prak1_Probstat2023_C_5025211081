# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 4

# Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. Tentukan:

# --a
# Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot 
# data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakanfungsi plot()).

# Keterangan:
# X1 = Bilangan bulat terdekat di bawah rata-rata
# X2 = Bilangan bulat terdekat di atas rata-rata
# Contoh data:
# 11
# 1,2,4,2,6,3,10,11,5,3,6,8
# rata-rata = 5.083333
# X1 = 5
# X2 = 6


# --b
# Gambarkan histogram dari distribusi Normal dengan breaks 50

set.seed(123)

n <- 100

mean <- 45
sd <- 5

val <- rnorm(n, mean, sd)

hist(val, breaks = 50, main = "Histogram dari Distribusi Normal", xlab = "Nilai", ylab = "Frekuensi")

# --c
# Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.

set.seed(123)

var(val)