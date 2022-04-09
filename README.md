# P1_Probstat_E_5025201011
Repository untuk pengerjaan Praktikum 1 mata kuliah Probabilitas dan Statistik 2022.

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Nur Muhammad Ainul Yaqin  | 5025201011 |

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
 - Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)
    ```R
    # Poin A
    p = 0.2
    x = 3
    P <- dgeom(x = n, prob = p)
    P
    ```
    Dengan hasil sebagai berikut
    ![1a](https://user-images.githubusercontent.com/64957624/162588258-e668ea40-94aa-493a-81f1-e1fe31f12aea.png)
 - Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi Geometrik acak () == 3)
    ```R
    # Poin B
    mean(rgeom(n = 10000, prob = p) == 3)
    mean
    ```
    Dengan hasil sebagai berikut
    ![1b](https://user-images.githubusercontent.com/64957624/162588257-8dee6bc6-2c60-4414-a700-2fde0d06568c.png)
 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
 
    jadi gini, 
    
 - Histogram distribusi Geometrik, dengan peluang X = 3 gagal sebelum sukses pertama
    ```R
    # Poin D
    n = 10000
    hist(rgeom(n, prob), main = 'Histogram Geometrik')
    ```
    Dengan hasil sebagai berikut
    ![1d](https://user-images.githubusercontent.com/64957624/162588256-1f056980-dae7-4c05-9914-38fc64b0726f.png)
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Geometrik
    ```R
    # Poin E
    mean = n * (prob = p)
    var = n * (prob = p) * (1 - (prob = p))
    mean
    var
    ```
    Dengan hasil sebagai berikut
    ![1e](https://user-images.githubusercontent.com/64957624/162588619-bfdd6c56-e045-45f4-922a-32834e7245b0.png)


</br>

## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan:
 - Peluang terdapat 4 pasien yang sembuh
    ```R
    n = 20
    p = 0.2

    # Poin A
    x = 4
    probability = dbinom(x, n, prob = p, log = FALSE)
    probability
    ```
    Dengan hasil sebagai berikut
    ![2a](https://user-images.githubusercontent.com/64957624/162588317-928e3e5d-a2cd-4d1b-8093-313909524b32.png)
 - Gambarkan grafik histogram berdasarkan kasus tersebut
    ```R
    # Poin B
    hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram of Binomial")
    ```
    Dengan hasil sebagai berikut
    ![2b](https://user-images.githubusercontent.com/64957624/162588309-70356e40-f650-441a-b4f2-2372a5f1e507.png)
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial
    ```R
    # Poin C
    mean = n * (prob = p)
    var = n * (prob = p) * (1 - (prob = p))
    mean
    var 
    ```
    Dengan hasil sebagai berikut
    ![2c](https://user-images.githubusercontent.com/64957624/162588318-d555c900-43a9-4012-8b6d-82fc68848e07.png)

 </br>

 ## Soal 3
 > Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
    ```R
    lambda = 4.5

    # Poin A
    x = 6
    probability = dpois(x, lambda)
    probability
    ```
    Dengan hasil sebagai berikut
    ![3a](https://user-images.githubusercontent.com/64957624/162588618-fa357adb-74f3-4799-8d9f-d0c104a48fa6.png)
 - Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
    ```R
    # Poin B
    x = 6
    n = 356
    hist(rpois(n, lambda), main = "Histogram Poisson")
    ```
    Dengan hasil sebagai berikut
    ![3b](https://user-images.githubusercontent.com/64957624/162588617-67215fb4-b69b-4be0-a2aa-c53cd4ce58b8.png)

 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

    jadi gini,
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Poisson
    ```R
    # Poin D
    mean = var = lambda
    mean
    var
    ```
    Dengan hasil sebagai berikut
    ![3c](https://user-images.githubusercontent.com/64957624/162588616-2a4f2549-3e60-4873-8a95-a6640bae01c1.png)



 </br>

 ## Soal 4
 > Diketahui nilai x = 2 dan v = 10. Tentukan:
 - Fungsi Probabilitas dari Distribusi Chi-Square.
    ```R
    x = 2
    v = 10

    # Poin A
    probability = dchisq(x, 10)
    probability
    ```
    Dengan hasil sebagai berikut
    ![4a](https://user-images.githubusercontent.com/64957624/162588614-de824863-4215-48fa-8eb1-420de4b98e85.png)
 - Histogram dari Distribusi Chi-Square dengan 100 data random.
    ```R
    # Poin B
    n = 100
    hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")
    ```
    Dengan hasil sebagai berikut
    ![4b](https://user-images.githubusercontent.com/64957624/162588613-802ebf76-c7d6-4cf8-8956-df0a252e6092.png)
 - Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
    ```R
    # Poin C
    mean = v
    variance = 2 * v
    mean
    variance
    ```
    Dengan hasil sebagai berikut
    ![4c](https://user-images.githubusercontent.com/64957624/162588612-d13f451e-a885-4c12-a79f-dfc67224cfbf.png


 </br>
 
 ## Soal 5
 > Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:
 - Fungsi Probabilitas dari distribusi Exponensial
    ```R

    ```
    Dengan hasil sebagai berikut

 - Histogram dari distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
    ```R
    lambda = 3

    # Poin A
    ```
    Dengan hasil sebagai berikut

 - Nilai rataan (μ) dan varian (σ²) dari distribusi Exponensial untuk n = 100 dan λ = 3
    ```R

    ```
    Dengan hasil sebagai berikut

 </br>

 ## Soal 6
 > Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan:
 - Fungsi Probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score-nya dan plot data generate randomnya dalam bentuk grafik
    ```R
    n = 100
    mean = 50
    sd = 8

    # Poin A

    ```
    Dengan hasil sebagai berikut

 - Generate histogram dari distribusi Normal dengan breaks 50 
    ```R

    ```
    Dengan hasil sebagai berikut

 - Nilai varian (σ²) dari hasil generate random nilai distribusi Normal
    ```R

    ```
    Dengan hasil sebagai berikut
    

