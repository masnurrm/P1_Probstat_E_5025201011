# P1_Probstat_E_5025201011
Repository untuk pengerjaan Praktikum 1 mata kuliah Probabilitas dan Statistik 2022.

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Nur Muhammad Ainul Yaqin  | 5025201011 |

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
 - Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?

    Penyelesaian dilakukan dengan menggunakan distribusi Geometrik dengan bantuan fungsi `dgeom()`. Dari fungsi tersebut, didapatkan hasil sebagai berikut, yaitu peluang sebesar `0.1024`. Fungsi tersebut berisi `x` (sampel orang yang tidak menghadiri acara vaksinasi) dan `p` (peluang kehadiran orang menghadiri acara vaksinasi) sebagai parameternya.
    ```R
    # Poin A
    p = 0.2
    x = 3
    P <- dgeom(x, p)
    P
    ```
    Dengan hasil sebagai berikut
    ![1a](https://user-images.githubusercontent.com/64957624/162624230-08e0fc03-3c75-4072-9906-3e4bc8ca1b48.png)
 - Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi Geometrik acak () == 3)!

    Penyelesaian dilakukan dengan menggunakan rumus rerata dengan parameter berupa angka acak dari distribusi Geometri yang telah dilakukan dengan bantuan fungsi `rgeom()`. Dari rerata fungsi tersebut, didapatkan hasil yang cenderung (selalu) berubah-ubah. Salah satu hasilnya adalah sebagai berikut, yaitu rerata sebesar `0.1028`. Fungsi `rgeom()` tersebut berisi banyaknya data acak orang dan peluang kehadiran orang dalam menghadiri acara vaksinasi.
    ```R
    # Poin B
    mean(rgeom(n = 10000, prob = p) == 3)
    ```
    Dengan hasil sebagai berikut
    ![1b](https://user-images.githubusercontent.com/64957624/162624244-68628246-30b8-47f5-93ac-7eec8981e031.png)
 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
 
    Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar `0.1024` dan akan selalu tetap jika dilakukan pengulangan pengujian. Hal itu dikarenakan nilai distribusi Geometrik yang digunakan adalah tetap dan tidak diacak.
    
    Sedangkan pada poin B, didapatkan hasil yang selalu berubah-ubah karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Nilai peluang distribusi tersebut akan selalu berubah seiring dengan nilai random yang dihasilkan dari fungsi `rgeom()`.
    
    Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A. 
    
 - Histogram distribusi Geometrik, dengan peluang X = 3 gagal sebelum sukses pertama.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Geometrik sebagai parameternya.
    ```R
    # Poin D
    n = 10000
    hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
    ```
    Dengan hasil sebagai berikut
    ![1d](https://user-images.githubusercontent.com/64957624/162624115-39c568c7-415e-4e1b-8392-5aba3595ecba.png)
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Geometrik.

    Untuk mendapatkan nilai rataan menggunakan formula banyak data dibagi dengan peluang kejadian.
    ```R
    # Poin E
    mean = 1 / p
    mean
    ```
    Untuk mendapatkan nilai varian menggunakan formula nilai rataan dan dibagi dengan kuadrat dari peluang kejadian.
    ```R
    # Poin E
    variance = (1 - p) / (p ^ 2)
    variance
    ```
    Dengan hasil sebagai berikut
    ![1e](https://user-images.githubusercontent.com/64957624/162624119-9c69b12e-fd15-45fc-98ba-5cee5eff04d5.png)


</br>

## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan:
 - Peluang terdapat 4 pasien yang sembuh.
    
    Untuk mendapatkan peluang tersebut, digunakan distribusi Binomial dengan memanfaatkan `dbinom()`. Fungsi tersebut berisi `n` (jumlah data pasien) dan `p` (peluang sembuh pasien) sebagai parameternya.
    ```R
    n = 20
    p = 0.2

    # Poin A
    x = 4
    probability = dbinom(x, n, prob = p, log = FALSE)
    probability
    ```
    Dengan hasil sebagai berikut
    ![2a](https://user-images.githubusercontent.com/64957624/162624120-d4bd7b09-9632-4f0b-9fcf-e4a467b8dd96.png)
 - Gambarkan grafik histogram berdasarkan kasus tersebut.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Binomial sebagai parameternya.
    ```R
    # Poin B
    hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram of Binomial")
    ```
    Dengan hasil sebagai berikut
    ![2b](https://user-images.githubusercontent.com/64957624/162624122-c10d8b01-bb6c-4089-bfee-e99df513e6b3.png)
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial.

    Untuk mendapatkan nilai rataan menggunakan formula banyak data dikali dengan peluang kejadian.
    ```R
    # Poin C
    mean = n * (prob = p)
    mean
    ```

    Untuk mendapatkan nilai varian menggunakan formula nilai rataan dan dikali dengan komplemen dari peluang kejadian.
    ```R
    # Poin C
    variance = n * (prob = p) * (1 - (prob = p))
    variance 
    ```

    Dengan hasil sebagai berikut
    ![2c](https://user-images.githubusercontent.com/64957624/162624123-e352cae3-5cd7-4c5b-885d-617ea0cd8010.png)

 </br>

 ## Soal 3
 > Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

    Penyelesaian dilakukan dengan menggunakan distribusi Poisson dengan bantuan fungsi `dpois()`. Fungsi tersebut berisi `x` (jumlah data bayi) dan `lambda` (rata-rata historis kelahiran bayi) sebagai parameternya.
    ```R
    lambda = 4.5

    # Poin A
    x = 6
    probability = dpois(x, lambda)
    probability
    ```
    Dengan hasil sebagai berikut
    ![3a](https://user-images.githubusercontent.com/64957624/162624127-43a84cc9-32b0-4f63-9b8e-d12f7426496c.png)
 - Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365).
    
    Untuk membuat histogram distribusi Poisson, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Poisson sebagai parameternya.
    ```R
    # Poin B
    x = 6
    n = 356
    hist(rpois(n, lambda), main = "Histogram Poisson")
    ```
    Dengan hasil sebagai berikut
    ![3b](https://user-images.githubusercontent.com/64957624/162624129-6d92438b-70df-44b1-93ee-7c248957f4e9.png)

 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

    Poin A dan B cenderung sama, karena nilai dari poin A sendiri didapat dari range nilai poin B. Range dari B dapat dilihat pada plot yang telah terbentuk. Dari sana, nilai dari A berada di dalam range B.
    
    Oleh karena itu, dalam estimasi selama 365 hari akan memberikan nilai hasil yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di waktu selanjutnya (esok hari).
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Poisson.
    
    Untuk mendapatkan nilai rataan menggunakan nilai dari variance, karena keduanya sama pada distribusi Poisson.
    ```R
    # Poin D
    mean = variance
    mean
    variance
    ```
    Dengan hasil sebagai berikut
    ![3d](https://user-images.githubusercontent.com/64957624/162624131-289b7b23-75e0-4c6f-9d8d-5e9300adfc85.png)



 </br>

 ## Soal 4
 > Diketahui nilai x = 2 dan v = 10. Tentukan:
 - Fungsi Probabilitas dari Distribusi Chi-Square.

    Penyelesaian dilakukan dengan menggunakan distribusi Chi-Square dengan bantuan fungsi `dchisq()`. Fungsi tersebut berisi `x` jumlah data dan `v`.
    ```R
    x = 2
    v = 10

    # Poin A
    probability = dchisq(x, 10)
    probability
    ```
    Dengan hasil sebagai berikut
    ![4a](https://user-images.githubusercontent.com/64957624/162624132-799a30f4-e2c6-451d-a341-81bab29e231e.png)
 - Histogram dari Distribusi Chi-Square dengan 100 data random.

    Untuk membuat histogram distribusi Chi-Square, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Chi-Squaresebagai parameternya.

    ```R
    # Poin B
    n = 100
    hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")
    ```
    Dengan hasil sebagai berikut
    ![4b](https://user-images.githubusercontent.com/64957624/162624133-163003c0-4bfb-438c-8aa1-a7399a9187f7.png)
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
    
    Untuk mendapatkan nilai rataan menggunakan nilai dari `v`.
    ```R
    # Poin C
    mean = v
    mean
    ```

    Untuk mendapatkan nilai rataan menggunakan nilai dari `v` dikali dua.
    ```R
    # Poin C
    variance = 2 * v
    variance
    ```
    Dengan hasil sebagai berikut
    ![4c](https://user-images.githubusercontent.com/64957624/162624136-aa54b822-3166-477b-8bf3-be4ee633b277.png)


 </br>
 
 ## Soal 5
 > Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:
 - Fungsi Probabilitas dari distribusi Exponensial.

    Penyelesaian dilakukan dengan menggunakan distribusi Eksponensial dengan bantuan fungsi `dexp()`. Fungsi tersebut berisi banyaknya data dan rate (λ) sebagai parameternya.
    ```R
    lambda = 3

    # Poin A
    set.seed(1)
    rnorm(1)
    probability = dexp(1, rate = lambda)
    # probability = rexp(1, rate = lambda)
    probability
    ```
    Dengan hasil sebagai berikut
    ![5a](https://user-images.githubusercontent.com/64957624/162624138-fe76e5c3-6492-4aea-b7f4-cff76f050012.png)

 - Histogram dari distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Eksponensial dan variasi pada jumlah data yang digunakan (10, 100, 1000, dan 10000) sebagai parameternya.
    ```R
    # Poin B
    set.seed(1)
    hist(rexp(10, rate = lambda), main = "Histogram Exponetial with 10 Random Generations")
    hist(rexp(100, rate = lambda), main = "Histogram Exponetial with 100 Random Generations")
    hist(rexp(1000, rate = lambda), main = "Histogram Exponetial with 1000 Random Generations")
    hist(rexp(10000, rate = lambda), main = "Histogram Exponetial with 10000 Random Generations")

    ```
    Dengan hasil sebagai berikut
    ![5ba](https://user-images.githubusercontent.com/64957624/162624155-d1388913-607b-4199-8f5e-751614f407b0.png)
    ![5bb](https://user-images.githubusercontent.com/64957624/162624173-008af391-8160-4619-a1f1-01a5b7acd912.png)
    ![5bc](https://user-images.githubusercontent.com/64957624/162624197-c2af345e-66bb-48bc-8434-4623407e328d.png)
    ![5bd](https://user-images.githubusercontent.com/64957624/162624202-64147f7e-f276-4a6a-bdcb-f183b93d78bf.png)
    

 - Nilai rataan (μ) dan varian (σ²) dari distribusi Exponensial untuk n = 100 dan λ = 3.

    Untuk mendapatkan nilai rataan menggunakan formula `mean()` dengan parameter angka acak dari distribusi Eksponensial.
    ```R
    # Poin C
    n = 100
    set.seed(1)
    mean = mean(rexp(n, rate = lambda))
    mean
    ```

    Untuk mendapatkan nilai varian menggunakan formula `sd()` atau standar deviasi dengan parameter angka acak dari distribusi Eksponensial dan dikuadratkan.
    ```R
    # Poin C
    n = 100
    set.seed(1)
    variance = (sd(rexp(n, rate = lambda))) ^ 2
    variance
    ```
    Dengan hasil sebagai berikut
    ![5c](https://user-images.githubusercontent.com/64957624/162624207-8cf49a52-eca0-410b-99a2-d0c4347c7b62.png)

 </br>

 ## Soal 6
 > Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan:
 - Fungsi Probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score-nya dan plot data generate randomnya dalam bentuk grafik.

    Untuk mendapatkan Z-Score, pertama-tama dilakukan generate random number dengan menggunakan fungsi `rnorm()`. Selanjutnya, dilakukan penentuan nilai `x1` dan `x2` yang nantinya digunakan dalam pembuatan plot grafik.
    ```R
    n = 100
    mean = 50
    sd = 8

    # Poin A
    set.seed(1)
    data <- rnorm(n, mean, sd)
    data
    summary(data)

    x1 = runif(1, min = min(data), max = mean)
    x2 = runif(1, min = mean, max = max(data))
    x1
    x2

    probability1 <- pnorm(x1, mean, sd)
    probability2 <- pnorm(x2, mean, sd)
    probability1
    probability2

    probability <- probability2 - probability1
    plot(data)
    ```
    Dengan hasil sebagai berikut
    ![6a](https://user-images.githubusercontent.com/64957624/162624211-b8df5646-1fd7-4a2f-ae08-1a682655af9b.png)

 - Generate histogram dari distribusi Normal dengan breaks 50.

    Untuk membuat histogram distribusi Geometrik, digunakan fungsi `hist()` dengan parameter yaitu data dan nilai breaks.
    ```R
    # Poin B
    breaks = 50
    hist(data, breaks, main = "5025201011_Nur Muhammad Ainul Yaqin_Probstat_E_DNhistogram")

    ```
    Dengan hasil sebagai berikut
    ![6b](https://user-images.githubusercontent.com/64957624/162624218-00052fff-5a0b-4a50-bb01-8872d7f1eb02.png)

 - Nilai varian (σ²) dari hasil generate random nilai distribusi Normal.

    Untuk mendapatkan nilai varian menggunakan formula kuadrat dari standar deviasi.
    
    ```R
    # Poin C
    variance = (sd(data)) ^ 2
    variance
    ```
    Dengan hasil sebagai berikut
    ![6c](https://user-images.githubusercontent.com/64957624/162624228-b612005b-4e23-4135-87f1-24ca64ae6503.png)

</br>

## Penutup
Mohon maaf jika ada kesalahan dalam pengerjaan praktikum 1 ini. Terima kasih.
    

