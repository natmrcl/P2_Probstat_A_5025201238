#NOMOR 1

x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
standarDeviasi = sd(x-y)
standarDeviasi

#b. Carilah nilai t (p-value)
t.test(y,x,paired=TRUE)

#c. Berdasarkan hasil jawaban pada 1b, dapat diketahui bahwa nilai probabilitas dari uji t (p-value) adalah 0,00006003. Jika dibandingkan, nilai tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0,05, maka hipotesis nol ditolak dan hal ini berarti ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A.

#NOMOR 2

library(BSDA)
zsum.test(mean.x=23500, sigma.x=3900, n.x=100, alternative = "greater", mu=20000)

#a, b, c
#Berdasarkan hasil tersebut, dapat diamati bahwa perkiraan p-value adalah 0, maka hipotesis nol ditolak dan dapat disimpulkan bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

#NOMOR 3

nbandung = 19
meanbandung = 3.64
sdbandung = 1.67

nbali = 27
meanbali = 2.79
sdbali = 1.32

#a. H0 dan H1
H0 : μ Bandung = μ Bali
H1 : μ Bandung ≠ μ Bali

#b. Hitung Sampel Statistik
tsum.test (n.x = nbandung, mean.x=meanbandung, s.x = sdbandung, n.y = nbali, mean.y=meanbali,  s.y=sdbali, var.equal = TRUE, conf.level = 0.95)

#c. Lakukan Uji Statistik (df =2)

#d. Nilai Kritikal
qt(p = 0.025, df = 2, lower.tail = FALSE)

#e. Keputusan
#H0 ditolak

#f. Kesimpulan
#Berdasarkan pengujian di atas, rata-rata saham Bandung dan Bali adalah sama.

#NOMOR 4
dataset = read.table("onewayanova.txt",h=T)
attach(dataset)

#a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
dataset$Group = as.factor(dataset$Group)
dataset$Group = factor(dataset$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class(dataset$Group)

Grup1 = subset(dataset, Group == "Kucing Oren")
Grup2 = subset(dataset, Group == "Kucing Hitam")
Grup3 = subset(dataset, Group == "Kucing Putih")

#b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
bartlett.test(Length ~ Group, data = dataset)

#c. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
model1 = lm(Length ~ Group, data = dataset)
anova(model1)

#d. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?

#e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
anv = aov(model1)
tukey = TukeyHSD(anv)
tukey

#f. Visualisasikan data dengan ggplot2
ggplot(dataset, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey", colour = "black") +
scale_x_discrete() + ylab("Length (cm)")


#NOMOR 5
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

dataGTL = read_csv("GTL.csv")

#a. Buatlah plot sederhana untuk visualisasi data
p <- ggplot(data = dataGTL, 
         aes(x = Temp, y = Light, 
          shape = factor(Glass))) + geom_point()
p + facet_grid(. ~ Glass)

#b. Lakukan uji ANOVA dua arah
dataGTL$Glass = as.factor(dataGTL$Glass)
dataGTL$Temp_Factor = as.factor(dataGTL$Temp)

GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
anova = aov(Light ~ Glass*Temp_Factor, data = dataGTL)
summary(anova)

#c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
dt_summary = group_by(dataGTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
dt_summary

#d. Lakukan uji Tukey
tukey = TukeyHSD(anova)
tukey

#e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
cld = multcompLetters4(anova, tukey)
cld
