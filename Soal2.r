# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 2

# Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik 
# ban dalam 20 tahun ke depan adalah 1,8

# --a
# Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.

lambda <- 1.8
x <- 0 : 10

dpois(x, lambda)

# --b
# Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang 
# tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.

x <- 4

dpois(x, lambda)

# --c
# Berapa peluang paling banyak 4 kematian akibat kanker tulang?

ppois(x, lambda)

x <- 0:4

ppois(x, lambda)[5]

# --d
#  Berapa peluang lebih dari 4 kematian akibat kanker tulang?

x <- 4

val <- ppois(x, lambda)

1 - val

# --e
#  Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar 
# deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

# Nilai harapan
lambda

# Mencari standar deviasi
sqrt(lambda)

# --f
# Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

val <- rpois(100, lambda)

hist(val, main = "Histogram Distribusi Banyak Kematian", xlab = "Banyak Kematian", ylab = "Frekuensi")

# --g
# Gunakan simulasi untuk memeriksa hasil sebelumnya

n <- 1000

replicate(n, {
  sum(rpois(1,lambda))
})

# --h
# Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. 
# Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

# Penjelasan di README
