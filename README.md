# P2_Probstat_A_5025201238

**<br>Natya Madya Marciola (5025201238)**
**<br>Probstat A**

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas π΄ terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas π΄, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas π΄. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas π΄
![1tabel](https://user-images.githubusercontent.com/91374949/170879427-d5c438cc-09da-49ac-b321-6ceab978e244.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas π΄ sebanyak 67, dan setelah melakukan aktivitas π΄ sebanyak 70.

Pertama, masukkan data terlebih dahulu.
```
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```

a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```
standarDeviasi = sd(x-y)
standarDeviasi
```
Hasilnya adalah sebagai berikut <br>
![1a](https://user-images.githubusercontent.com/91374949/170879644-6427022b-e274-40b1-82c8-fe0750dfe8e1.png)


b. carilah nilai t (p-value)

```
t.test(y,x,paired=TRUE)
```
Hasilnya adalah sebagai berikut <br>
![1b](https://user-images.githubusercontent.com/91374949/170879720-5028d1ac-fa54-4398-92f4-49847a1a63b9.png)


c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas π΄ jika diketahui tingkat signifikansi πΌ = 5% serta H0 : βtidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas π΄β
```
Berdasarkan hasil jawaban pada 1b, dapat diketahui bahwa nilai probabilitas dari uji t (p-value) adalah 0,00006003. 
Jika dibandingkan, nilai tersebut lebih kecil dibandingkan tingkat signifikansi πΌ = 0,05, maka hipotesis nol ditolak 
dan hal ini berarti ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah 
melakukan aktivitas A.
```


## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul)

a. Apakah Anda setuju dengan klaim tersebut?
<br> Setuju

b. Jelaskan maksud dari output yang dihasilkan! 
```
library(BSDA)
zsum.test(mean.x=23500, sigma.x=3900, n.x=100, alternative = "greater", mu=20000)
```
Hasilnya adalah sebagai berikut<br>
![2b](https://user-images.githubusercontent.com/91374949/170879896-f80df0b8-448b-44d9-b047-e6fb624305bf.png)

c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
```
Berdasarkan hasil tersebut, dapat diamati bahwa perkiraan p-value adalah 0, maka hipotesis nol ditolak dan 
dapat disimpulkan bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
```

## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
![3tabel](https://user-images.githubusercontent.com/91374949/170879960-9b8ff295-d0f6-4d10-8b07-1aa7648a7fe2.png) <br>
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (Ξ±= 0.05)? Buatlah :

Pertama, masukkan semua nilai terlebih dahulu.
```
nbandung = 19
meanbandung = 3.64
sdbandung = 1.67

nbali = 27
meanbali = 2.79
sdbali = 1.32
```
a. H0 dan H1
```
H0 : ΞΌ Bandung = ΞΌ Bali
H1 : ΞΌ Bandung β  ΞΌ Bali
```

b. Hitung Sampel Statistik
```
tsum.test (n.x = nbandung, mean.x=meanbandung, s.x = sdbandung, n.y = nbali, mean.y=meanbali,  s.y=sdbali, var.equal = TRUE, conf.level = 0.95)
```
Hasilnya adalah sebagai berikut<br>
![3b](https://user-images.githubusercontent.com/91374949/170880161-3ed62aed-d632-4ead-849f-291f03cdf844.png)


c. Lakukan Uji Statistik (df =2)
```

```
d. Nilai Kritikal
```
qt(p = 0.025, df = 2, lower.tail = FALSE)
```
Hasilnya adalah sebagai berikut<br>
![3d](https://user-images.githubusercontent.com/91374949/170880221-1385b622-a2ff-4e46-a155-fcc394955aba.png)

e. Keputusan
```
H0 ditolak.
```
f.  Kesimpulan
```
Berdasarkan pengujian di atas, rata-rata saham Bandung dan Bali adalah sama.
```

## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1 <br>
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama <br>
Maka Kerjakan atau Carilah:

Pertama, simpan data terlebih dahulu menggunakan fungsi `read.table`
```
dataset = read.table("onewayanova.txt",h=T)
attach(dataset)
```

a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```
dataset$Group = as.factor(dataset$Group)
dataset$Group = factor(dataset$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class(dataset$Group)

Grup1 = subset(dataset, Group == "Kucing Oren")
Grup2 = subset(dataset, Group == "Kucing Hitam")
Grup3 = subset(dataset, Group == "Kucing Putih")
```
#b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
```
bartlett.test(Length ~ Group, data = dataset)
```
Hasilnya adalah sebagai berikut <br>
![4b](https://user-images.githubusercontent.com/91374949/170882190-184ef429-c8d9-4b9a-b6b5-e39582adeb9f.png)

#c. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```
model1 = lm(Length ~ Group, data = dataset)
anova(model1)
```
Hasilnya adalah sebagai berikut <br>
![4c](https://user-images.githubusercontent.com/91374949/170882202-9d325d38-f466-4e45-8535-2d6666768155.png)

#d. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
```
```

#e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
```
anv = aov(model1)
tukey = TukeyHSD(anv)
tukey
```
Hasilnya adalah sebagai berikut <br>
![4e](https://user-images.githubusercontent.com/91374949/170882231-be6f3fca-36da-4bf9-b758-64896479bcf2.png)

#f. Visualisasikan data dengan ggplot2
```
library(ggplot2)
ggplot(dataset, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey", colour = "black") +
scale_x_discrete() + ylab("Length (cm)")
```
Hasilnya adalah sebagai berikut <br>
![4f](https://user-images.githubusercontent.com/91374949/170882277-6ea16ef5-2104-4e7c-9a67-572a819a9b33.png)


## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100ΛC, 125ΛC dan 150ΛC) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

Library yang akan digunakan adalah sebagai berikut.
```
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```
Untuk mengambil data, akan digunakan fungsi `read_csv`.
```
dataGTL = read_csv("GTL.csv")
```
a. Buatlah plot sederhana untuk visualisasi data
```
p = ggplot(data = dataGTL, 
         aes(x = Temp, y = Light, 
          shape = factor(Glass))) + geom_point()
p + facet_grid(. ~ Glass)
```
Hasilnya adalah sebagai berikut<br>
![5a](https://user-images.githubusercontent.com/91374949/170880433-4db6fece-0440-4bd7-8542-f53d0363a70d.png)

b. Lakukan uji ANOVA dua arah
```
GTL$Glass = as.factor(GTL$Glass)
GTL$Temp_Factor = as.factor(GTL$Temp)
anova = aov(Light ~ Glass*Temp_Factor, data = dataGTL)
summary(anova)
```
Hasilnya adalah sebagai berikut<br>
![5b](https://user-images.githubusercontent.com/91374949/170880530-b6a1a8ce-8526-4a9b-96b0-7b77269b538d.png)

c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```
dt_summary = group_by(dataGTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
dt_summary
```
Hasilnya adalah sebagai berikut<br>
![5c](https://user-images.githubusercontent.com/91374949/170880537-4446bbd1-25d0-437d-a615-3c45a313c167.png)

d. Lakukan uji Tukey
```
tukey = TukeyHSD(anova)
tukey
```
Hasilnya adalah sebagai berikut <br>
![5d](https://user-images.githubusercontent.com/91374949/170880542-96ea2619-e0cc-4419-b35c-a5602db3e3e2.png)

e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
```
cld = multcompLetters4(anova, tukey)
cld
```
Hasilnya adalah sebagai berikut <br>
![5e](https://user-images.githubusercontent.com/91374949/170880550-8268fce5-1fd6-42ba-a9f5-c26d4eafc5a8.png)

