# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 5

# Kerjakanlah menggunakan distribusi T-Student.

# --a
#  Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?

df <- 6

pt(-2.34, df)

# --b
# Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?

1 - pt(1.34, df)

# --c
# Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau 
# lebih besar dari 1,23 dengan 3 derajat kebebasan?

df <- 3

val1 <- pt(-1.23, df)

val2 <- 1 - pt(1.23, df)

val1 + val2


# --d
# Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 
# dan 0,94 dengan 14 derajat kebebasan?

df <- 14

val1 <- pt(-0.94, df)

val2 <- pt(0.94, df)

val2 - val1

# --e
# Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 
# satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

df <- 5
area <- 0.0333

qt(area, df, lower.tail = TRUE)

# --f
# Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 
# satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

df <- 25
area <- 0.125

qt(area, df, lower.tail = FALSE)

# --g
# Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah 
# kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?

df <- 11
area <- 0.75

val1 <- qt((1-area)/2, df, lower.tail = TRUE)

val2 <- qt((1-area)/2, df, lower.tail = FALSE)

c(val1, val2)

# --h
# Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva 
# dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?

df <- 23
area <- 0.0333

abs(qt(area/2, df)) * c(-1, 1)
