# Prak1_Probstat2023_C_5025211081

### Nama : Gabriella Natasya Br Ginting
### NRP  : 5025211081
### Kelas : Probstat C

<br>

- [Soal 1](#soal-1)
- [Soal 2](#soal-2)
- [Soal 3](#soal-3)
- [Soal 4](#soal-4)
- [Soal 5](#soal-5)

## Soal 1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. 
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, 
maka:

- A. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan 
parameter yang sesuai.

Diketahui :
- p = 0,488
- n = 10
- k = 0 : n

```
p <- 0.488 
n <- 10 

k <- 0:n 

dbinom(k, n, p)
```
Keterangan:
- p : probabiltas kelahiran bayi jenis kelamin laki-laki
- n : Jumlah kelahiran dalam satu hari
- k : Jumlah bayi laki-laki

Diketahui bahwa dalam satu hari akan dilahirkan bayi laki-laki sebanyak `` 0 : 10 ``

Maka, untuk menentukan distribusi banyak bayi laki-laki dapat digunakan Fungsi Distibusi Binomial dbinom(). 

Hasil dari program :

![ss1](/images/ss1.jpg)

- B. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?

Diketahui :
- p = 0,488
- n = 10
- k = 3

```
k <- 3

dbinom(k, n, p)
```
Diketahui bahwa dalam satu hari akan dilahirkan bayi laki-laki sebanyak ``3``

Maka, parameter yang diketahui dimasukkan ke fungsi dbinom(). Penggunaan fungsi dbinom dikarenakan untuk mencari probabilitas untuk sebanyak ``k`` bayi.

Hasil dari program :

``` 
0.1286265 
```

- C. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin 
laki-laki?

Diketahui :
- p = 0,488
- n = 10
- k = 0 : 2

```
k <- 0:2 

pbinom(k, n, p)[3]
```
Diketahui bahwa dalam satu hari akan dilahirkan bayi laki-laki sebanyak kurang dari 3, yang artinya kemungkinan bayi laki-laki yang lahir adalah ``0`` , ``1`` atau ``2`` .

Maka, parameter yang diketahui dimasukkan ke fungsi pbinom().

Digunakan fungsi pbinom() karena menghitung probabilitas komulatif dari jumlah bayi laki-laki yang mungkin lahir pada satu hari tersebut

Untuk memunculkan probabilitas kurang dari 3 bayi, maka digunakan indeks ke-3

Hasil dari program :

``` 
0.0636442
```

- D. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin 
laki-laki?

Diketahui :
- p = 0,488
- n = 10
- k = 2

```
k <- 2

val <- pbinom(k, n, p)

1 - val
```
Keterangan:
- val : menyimpan hasil dari fungsi pbinom()
- 1 : probabilitas seluruhnya merupakan bayi laki-laki

Diketahui bahwa dalam satu hari akan dilahirkan bayi laki-laki sebanyak tiga atau lebih, yang artinya kemungkinan bayi laki-laki yang lahir adalah ``3`` , ``4`` , ``...`` , atau ``10`` .

Maka, parameter yang diketahui dimasukkan ke fungsi pbinom().


Untuk mendapatkan hasil sesuai dengan soal diatas, maka dapat digunakan probabilitas seluruhnya merupakan bayi laki-laki dikurangkan dengan probabilitas pada soal c (yaitu kurang dari 3 bayi laki-laki yang akan dilahirkan) .

Hasil dari program :

``` 
0.9363558
```

- E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

Diketahui :
- p = 0,488
- n = 10

```
# Mencari nilai harapan
n * p 

# Mencari nilai simpangan baku
sqrt(n * p * (1 - p))
```
Keterangan:
- sqrt : akar kuadrat

Nilai harapan dapat dicari dengan perkalian antara jumlah kelahiran dengan probabilitas seorang bayi laki-laki dilahirkan.

Nilai simpangan baku dicari dengan mencari akar kuadrat dari perkalian nilai harapan dengan `` 1 - p ``

Hasil dari program :

``` 
# Nilai harapan
4.88

# Nilai simpangan baku
1.580683
```

- F. Gambarkan histogram pendistribusian banyak bayi laki-laki.

Diketahui :
- p = 0,488
- n = 10

```
hist(rbinom(100, n, p), main = "Histogram Distribusi Bayi Laki-laki", xlab = "Banyak Bayi Laki-Laki", ylab = "Frekuensi")
```
Keterangan:
- 100 : nilai sampel 
- main : atribut penamaan histogram
- xlab : label sumbu x
- ylab : label sumbu y

Fungsi hist digunakan untuk membuat histogram dari suatu data numerik

Fungsi rbinom() digunakan untuk menghasilkan nilai-nilai acak yang mengikuti distribusi binomial. Dengan fungsi rbinom() akan menghasilkan 100 nilai acak  dengan parameter ``n`` dan ``p``

Hasil dari program :

![ss2](/images/ss2.jpg)


## Soal 2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik 
ban dalam 20 tahun ke depan adalah 1,8.

- A. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan 
distribusi dengan parameter yang sesuai.

Diketahui :
- lambda = 1,8
- x = 0 : 10

```
lambda <- 1.8
x <- 0 : 10

dpois(x, lambda)
```
Keterangan:
- lambda : rata-rata frekuensi kejadian acak
- x : banyak kematian karena kanker tulang

Diasumsikan ( jumlah kejadian acak yang diambil ) bahwa dalam 20 tahun kedepan banyaknya kematian akibat kanker tulang adalah sebanyak `` 0 : 10 ``

Digunakan fungsi dpois() untuk mendapatkan nilai frekuensi kejadian acak dalam interval waktu tertentu. Fungsi dpois ditujukan untuk mencari nilai fungsi massa probabilitas (PMF) dari distribusi Poisson pada setiap titik dalam vektor input.

Hasil dari program :

![ss3](/images/ss3.jpg)

- B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.

Diketahui :
- lambda = 1,8
- x = 4

```
x <- 4

dpois(x, lambda)
```
Diketahui bahwa banyak kematian akibat kanker tulang ada sebanyak ``4``

Karena diketahui nilai pasti x adalah ``4``, maka dapat digunakan fungsi dpois(). Dan masukkan sesuai dengan parameter yang sudah diketahui.

Hasil dari program :

```
0.07230173
```

- C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?

Diketahui :
- lambda = 1,8
- x = 0 : 4

```
x <- 0:4

ppois(x, lambda)[5]
```

Diketahui bahwa jumlah kematian akibat kanker tulang adalah paling banyak 4. Sehingga banyak kematian memiliki kemungkinan ``0``, ``1``, ``2``, ``3`` atau ``4`` kematian.

Karena x memiliki nilai komulatif, maka digunakan fungsi ppois(). Yang dimana fungsi ppois() menghitung nilai probabilitas kumulatif dari variabel acak diskrit yang mengikuti distribusi Poisson pada setiap titik dalam vektor input.

Untuk memunculkan probabilitas paling banyak 4 kematian akibat kanker tulang, maka dipakai indeks ke-5.

Hasil dari program :

```
0.9635933
```

- D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?

Diketahui :
- lambda = 1,8
- x = 4

```
val <- ppois(x, lambda)

1 - val
```
Keterangan :
- 1 : nilai probabilitas bahwa semua kematian akibat kanker tulang
- val : menyimpan hasil dari fungsi ppois()

Diketahui bahwa jumlah kematian akibat kanker tulang adalah lebih dari 4. Sehingga banyak kematian memiliki kemungkinan ``5``, ``6`` atau ``...``kematian.

Karena diminta peluang lebih dari 4 kematian akibat kanker tulang, maka dapat dicari dengan cara mengurangkan probabilitas bahwa semua kematian akibat kanker tulang dengan hasil dari probabilitas bahwa kematian akibat kanker tulang paling banyak adalah 5.

Hasil dari program :

```
0.03640666
```

- E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar 
deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

Diketahui :
- lambda = 1,8

```
# Nilai harapan
lambda

# Mencari standar deviasi
sqrt(lambda)
```
Keterangan :
- sqrt : akar kuadrat

Untuk mencari nilai harapan dapat dilihat dari nilai lambda saja, karena nilai harapan sama dengan lambda.

Untuk mencari nilai standar deviasi dapat dilakukan dengan akar kuadrat dari lambda.

Hasil dari program :

```
# Nilai harapan
1.8

# Nilai standar deviasi
1.341641
```

- F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

Diketahui :
- lambda = 1,8

```
val <- rpois(100, lambda)

hist(val, main = "Histogram Distribusi Banyak Kematian", xlab = "Banyak Kematian", ylab = "Frekuensi")
```
Keterangan :
- 100 : yang menunjukkan jumlah sampel yang akan dihasilkan
- val : menyimpan nilai yang dihasilkan fungsi rpois()

Fungsi hist digunakan untuk menampilkan data hasil sampel tersebut dalam tampilan bentuk histogram

Digunakan juga fungsi rpois() karena untuk menghasilkan sampel acak dari distribusi Poisson.

Hasil dari program :

![ss4](/images/ss4.jpg)

- G. Gunakan simulasi untuk memeriksa hasil sebelumnya

Diketahui :
- lambda = 1,8

```
replicate(1000, {
  sum(rpois(1,lambda))
})
```
Keterangan :
- 1000 : jumlah simulasi Monte Carlo yang akan dilakukan
- sum : menghitung jumlah 
- replicate : pengulangan simulasi Monte Carlo 

Angka ``1`` diatas digunakan untuk menentukan jumlah observasi yang akan dihasilkan dari distribusi Poisson pada setiap iterasi simulasi Monte Carlo.

Fungsi rpois() akan menghasilkan sampel acak dari distribusi Poisson dengan parameter lambda yang telah ditentukan sebelumnya.

Hasil dari program :

![ss5](/images/ss5.jpg)

- H. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda

Banyak kematian yag diakibatkan oleh kanker tulang dalam simulasi akan bervariasi setiap kali program dijalankan.

Namun, hasil simulasi yang sudah di dapatkan akan mengikuti distribusi Poisson dengan parameter yang diberikan, yaitu λ = 1,8. 

Oleh karena itu, hasil simulasi yang dicari dapat membantu mengkonfirmasi hasil perhitungan sebelumnya, serta memberikan gambaran visual tentang distribusi banyak kematian akibat kanker tulang yang terkena pada pekerja pabrik ban. 

Hasil simulasi yang dilakukan juga memberikan visualisasi bahwa hasil yang didapatkan pada bagian 2d sesuai. Yang dimana apabila dilihat dari hasil simulasi, menunjukkan bahwa peluang banyak kematian akibat kanker tulang yang lebih dari 4 sangat sedikit dibandingkan dengan kematian akibat kanker tulang yang kurang atau sama dengan 4. 

## Soal 3
Diketahui nilai x = 3 dan v = 10. Tentukan:

- A. Fungsi probabilitas dari distribusi Chi-Square.

Diketahui :
- x = 3
- v = 10

```
x <- 3
v <- 10

dchisq(x, v)
```
Keterangan:
- x : nilai titik untuk menghitung fungsi probabilitas
- v : derajat kebebasan

Pada soal diatas digunakan fungsi dchisq() karena fungsi tersebut yang dapat menghitung nilai probabilitas dari Chi-Square distribusi pada titik tertentu.

Hasil dari program :

```
0.02353326
```

- B. Histogram dari distribusi Chi-Square dengan 500 data acak.

Diketahui :
- n = 500
- v = 10

```
n <- 500

val <- rchisq(n, v)

hist(val, main = "Histogram Distribusi Chi-Square", xlab = "Nilai", ylab = "Frekuensi")
```
Keterangan:
- n : jumlah data acak
- val : menyimpan nilai yang dihasilkan fungsi rchisq()

Digunakan fungsi hist untuk menampilkan diagram histogram dari probabilitas yang dihasilkan menggunakan Distribusi Chi-Square.

Fungsi rchisq() digunakan untuk menghasilkan sampel acak dari distribusi Chi-Square dengan derajat kebebasan tertentu.

Hasil dari program :

![ss6](/images/ss6.jpg)

- C. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

Diketahui :
- v = 10

```
# Nilai rataan 
v

# Mencari nilai varian
2 * v
```

Untuk mencari nilai rataan dapat digunakan dengan melihat nilai derajat kebebasan. Yang dimana nilai rataan sama dengan nilai derajat kebebasan.

Untuk mencari nilai varian dapat digunakan dengan mengalikan nilai derajat kebebasan dengan 2.

Hasil dari program :

```
# Nilai rataan
10

# Nilai Varian
20
```

## Soal 4
Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. 

Tentukan:

- A. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya 
dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan
fungsi plot()).

Keterangan:

X1 = Bilangan bulat terdekat di bawah rata-rata

X2 = Bilangan bulat terdekat di atas rata-rata

Contoh data:

11

1,2,4,2,6,3,10,11,5,3,6,8

rata-rata = 5.083333

X1 = 5

X2 = 6

```
set.seed(123)

n <- 100
mean <- 45
sd <- 5

val = rnorm(n, mean, sd)

res = mean(val)

val1 = floor(res)
val2 = ceiling(res)

val1
val2

# P(X1 ≤ x ≤ X2)
pnorm(val2, mean, sd) - pnorm(val1, mean, sd)

# z-score
(val - res) / sd

plot((val - res) / sd, main = "Data Bangkitan Acak", xlab = "Index", ylab = "Frekuensi")
```
Keterangan :
- n : jumlah observasi dalam data yang dibangkitkan
- mean : nilai rata-rata dari distribusi normal 
- sd : besarnya variasi data dalam distribusi normal

Fungsi rnorm() digunakan untuk menghasilkan angka acak yang mengikuti distribusi normal dengan mean dan standar deviasi yang sudah diketahui, dengan jumlah data acak yang dihasilkan adalah sebanyak 100 data.

Digunakan fungsi floor() dan ceiling() yang dimana masing-masing digunakan untuk mendapatkan hasil ``val1`` dan ``val2``. Fungsi tersebut juga masing-masing menghasilkan bilangan desimal yang dibulatkan ke terkecil dan terbesar dari angka tersebut.

Fungsi pnorm() digunakan untuk menghitung peluang kumulatif dari variabel acak yang mengikuti distribusi normal, dengan menggunakan mean dan standar deviasi yang ditentukan.

Fungsi plot() digunakan untuk menghasilkan grafik yang menunjukkan distribusi data acak yang telah dihasilkan dalam bentuk z-score.

Hasil dari program :

```
```

- B. Gambarkan histogram dari distribusi Normal dengan breaks 50

Diketahui :
- n = 100
- mean = 45
- sd = 5
- breaks = 50

```
set.seed(123)

n <- 100

mean <- 45
sd <- 5

val <- rnorm(n, mean, sd)

hist(val, breaks = 50, main = "Histogram dari Distribusi Normal", xlab = "Nilai", ylab = "Frekuensi")
```
Keterangan :
- n : jumlah observasi dalam data yang dibangkitkan
- mean : nilai rata-rata dari distribusi normal 
- sd : besarnya variasi data dalam distribusi normal
- val : menyimpan nilai hasil dari fungsi rnorm
- breaks : jumlah interval-bin

``set.seed(123)`` digunakan untuk memastikan hasil yang dihasilkan akan sama setiap kali kode dijalankan.

Fungsi hist digunakan untuk menampilkan frekuensi kemunculan nilai-nilai dalam hasil dari fungsi menggunakan rnorm tersebut dan membantu kita memvisualisasikan distribusi data secara grafis.

Fungsi rnorm() digunakan untuk dapat menghasilkan data acak dari distribusi normal dengan menggunakan argumen-argumen seperti mean dan standar deviasi.

Hasil dari program :

![ss7](/images/ss7.jpg)

- C. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.

Diketahui :
- n = 100
- mean = 45
- sd = 5

```
set.seed(123)

var(val)
```
Keterangan :
- val : menyimpan nilai hasil dari fungsi rnorm
- var : variansi

``val`` yang sebelumnya menyimpan hasil dari fungsi rnorm soal bagian b, digunakan kembali untuk mendapatkan nilai varian.

Untuk mendapatkan nilai varian dari hasil data bangkitan acak distribusi Normal, dapat dilakukan dengan memanfaatkan fungsi var() dengan argumen dari nilai val sebelumnya.

Hasil dari program :

```
20.83082
```

## Soal 5
Kerjakanlah menggunakan distribusi T-Student.

- A. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 
6 derajat kebebasan?

Diketahui :
- df = 6

```
df <- 6

pt(-2.34, df)
```
Keterangan:
- df : derajat kebebasan

Fungsi pt() digunakan untuk menghitung probabilitas bahwa nilai ``x`` pada distribusi t-Student kurang dari ``-2,34`` dengan menggunakan derajat kebebasan ``df``.

Hasil dari program :

```
0.02892197
```

- B. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?

Diketahui :
- df = 6

```
1 - pt(1.34, df)
```
Keterangan:
- df : derajat kebebasan
- 1 :  total probabilitas dari distribusi t-Student

Fungsi pt() digunakan untuk menghitung probabilitas bahwa ``x`` lebih besar dari ``1,34``.

Dengan pengurangan total probabilitas dengan probabilitas bahwa x kurang dari atau sama dengan 1.34 akan mendapatkan probabilitas bahwa x lebih besar dari 1.34.

Hasil dari program :

```
0.11438
```

- C. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau 
lebih besar dari 1,23 dengan 3 derajat kebebasan?

Diketahui :
- df = 3

```
df <- 3

val1 <- pt(-1.23, df)

val2 <- 1 - pt(1.23, df)

val1 + val2
```
Keterangan:
- df : derajat kebebasan
- 1 :  total probabilitas dari distribusi t-Student
- val1 : menyimpan nilai dari fungsi pt()
- val2 : menyimpan nilai dari ``1`` dikurang nilai fungsi pt()

Karena distribusi t-Student simetris, probabilitas ini akan sama besar.

Fungsi pt() digunakan untuk menghitung probabilitas bahwa ``x`` kurang dari ``-1.23`` dan probabilitas bahwa ``x`` kurang dari atau sama dengan ``1.23``

Untuk menghitung probabilitas bahwa X lebih besar dari 1.23, maka dapat dilakukan mengurangi probabilitas bahwa X kurang dari atau sama dengan 1.23 dari 1 (total probabilitas).

Serta untuk menghasilkan probabilitasnya dapat dilakukan penjumlahan var1 dan var2.

Hasil dari program :

```
0.306356
```

- D. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 
dan 0,94 dengan 14 derajat kebebasan?

Diketahui :
- df = 14

```
df <- 14

val1 <- pt(-0.94, df)

val2 <- pt(0.94, df)

val2 - val1
```
Keterangan:
- df : derajat kebebasan
- val1 : menyimpan nilai dari fungsi pt()
- val2 : menyimpan nilai dari fungsi pt()

Karena distribusi t-Student simetris, maka probabilitas terjadinya peristiwa yang kurang dari ``-0.94`` akan sama dengan probabilitas terjadinya peristiwa yang lebih besar dari ``0.94``.

Mengurangkan nilai dari val2 dengan val1 adalah untuk mendapatkan probabilitas terjadinya peristiwa yang berada di antara -0.94 dan 0.94.

Hasil dari program :

```
0.6368457
```

- E. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 
satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

Diketahui :
- df = 5
- area = 0.0333

```
df <- 5
area <- 0.0333

qt(area, df, lower.tail = TRUE)
```
Keterangan:
- df : derajat kebebasan
- area : luasan di bawah kurva distribusi 

Fungsi qt() adalah kebalikan dari fungsi pt() pada distribusi t-Student. Fungsi qt() dapat digunakan untuk menghitung nilai t-score yang sesuai dengan probabilitas kumulatif (luasan) tertentu pada distribusi t-Student.

``lower.tail = TRUE`` merupakan value untuk menunjukkan bahwa nilai yang ingin dihitung adalah luasan di ekor kiri distribusi.

Hasil dari program :

```
-2.337342
```

- F. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 
satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

Diketahui :
- df = 25
- area = 0,125

```
df <- 25
area <- 0.125

qt(area, df, lower.tail = FALSE)
```
Keterangan:
- df : derajat kebebasan
- area : luasan di bawah kurva distribusi 

Fungsi qt() digunakan untuk mencari t-score yang memiliki luasan tertentu di bawah kurva dan di sebelah kanan t-score.

``lower.tail=FALSE`` karena pada soal diminta untuk mencari nilai t-score yang berada di sebelah kanan.

Hasil dari program :

```
1.177716
```

- G. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 
satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari 
nilai t-score tersebut?

Diketahui :
- df = 11
- area = 0,75 

```
df <- 11
area <- 0.75

val1 <- qt((1-area)/2, df, lower.tail = TRUE)

val2 <- qt((1-area)/2, df, lower.tail = FALSE)

c(val1, val2)
```
Keterangan:
- df : derajat kebebasan
- area : luasan di bawah kurva distribusi 

Pada ``val1`` akan mencari nilai t-score yang memiliki luasan ``(1-area)/2 = 0,125`` di atasnya. Lalu pada fungsi qt() dengan nilai ``lower.tail = TRUE`` untuk mendapatkan nilai t-score di bawah kurva.

Pada ``val2`` akan mencari nilai t-score yang memiliki luasan ``(1-area)/2 = 0,125`` di bawahnya. Lalu pada fungsi qt() dengan nilai ``lower.tail = FALSE`` untuk mendapatkan nilai t-score di atas kurva.

Fungsi c() digunakan untuk menggabungkan nilai ``val1`` dan ``val2`` yang sudah ditemukan.

Hasil dari program :

```
-1.21446  1.21446
```

- H. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 
satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan 
negatif dari nilai t-score tersebut?

Diketahui :
- df = 23
- area = 0.0333

```
df <- 23
area <- 0.0333

abs(qt(area/2, df)) * c(-1, 1)
```
Keterangan:
- df : derajat kebebasan
- area : luasan di bawah kurva distribusi 

Fungsi abs() untuk menghasilkan nilai positif dari nilai fungsi qt().

Fungsi qt() digunakan untuk menghitung nilai t-score yang memiliki luasan 0,0333 satuan persegi di bawah kurva distribusi t dengan 23 derajat kebebasan. 

Fungsi c() digunakan untuk membuat sebuah vektor untuk dapat dikalikan dengan nilai dari fungsi abs(). Fungsi c() ditujukan untuk menghasilkan dua nilai t-score, yaitu negatif dan positif, yang mempunyai luasan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut.

Hasil dari program :

```
-2.264201  2.264201
```
