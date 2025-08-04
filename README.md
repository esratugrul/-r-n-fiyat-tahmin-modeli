# 🧠 Ürün Fiyat Tahmini ve Analizi (2019–2024)

Bu proje, 2019–2023 yıllarına ait ürün fiyat verilerini kullanarak 2024 yılı için fiyat tahminleri üretmeyi amaçlamaktadır. Çalışma, **Yapay Zeka ve Teknoloji Akademisi** tarafından düzenlenen bir **Datathon** kapsamında geliştirilmiştir.

## 🎯 Proje Hakkında

Python'da çeşitli kütüphaneler kullanılarak veri temizleme ve feature engineering işlemleri yapılmıştır. Geçmiş ürün fiyatları(2019-2023) verisiyle XGBoost modeli eğitilmiştir. Geliştirilen model, aynı ürünlerin 2024 yılındaki fiyatlarını tahmin etmiştir. Daha sonra ürün fiyatı, ürün kategorisi, ürün fiyatının ay ve yılı, ürünün üretim yeri gibi sütunlar içeren bu mevcut veri ve tahmin verileri SQL ile birleştirilmiştir. Birleştirilen veriler Tableau ile görselleştirilmiştir. Böylelikle yıllara göre ortalama fiyat değişimi, kategori bazında ortalama fiyat değişimi, ürün üretim yerine göre maksimum ürün fiyatı gibi konular grafiklerle gösterilmiştir.

## 🛠️ Kullanılan Araçlar ve Teknolojiler

📂 Veri Kaynağı: https://www.kaggle.com/competitions/academy2025/data?select=testFeatures.csv

🐍 Veri temizleme & Model oluşturma: Python (NumPy, Pandas, Matplotlib, XGBoost)

🐍 Veri birleştirme: SQL

📊 Görselleştirme: Tableau




📌 Proje Dosyaları

📁 train.csv/ → Ham veri

📁 testFeatures.csv/ → Tahmin edilmesi istenen veri

📁 trained_test_table.csv/ → Tahmin edilen veri(2024)

📁 final_table.csv / Eğitim verisi(2019-2023) ve tahmin (2024) verisinin birleştirilmiş hali

🐍 trained_test_table.sql/ → Veri birleştirme sorguları

🐍 product_price_prediction.ipynb/ → Jupiter notebook

📊 product_price_change.twb / → Tableau dashboard dosyası

📊 dashboard.pdf/ → Tableau dashboard'un pdf hali

📜 readme.txt → Proje açıklaması(bu dosya)



## 📌 Modelin Kısıtları ve Genel Gözlemler

XGBoost modeli geçmiş yıllardaki örüntüleri baz alarak tahmin üretmiştir. Ancak modelin bazı sınırlamaları şu şekilde özetlenebilir:

- Minimum ve maksimum fiyat karşılaştırması için ortalama ürün fiyatının en yüksek olduğu et kategorisi seçilmiştir. **Maksimum fiyatlar özelinde**, 2023 yılında gözlemlenen ani artışları model sürdürülebilir bulmamış ve 2024 için bu değerleri **önceki yılların seviyelerine geri çekerek** tahmin etmiştir. Bu durum modelin **aşırı uç değerleri (outlier)** baskılama eğiliminden kaynaklanmaktadır.

- Buna karşın **minimum fiyatlar**, her yıl düzenli şekilde arttığı için model bu trendi doğru şekilde öğrenmiş ve 2024 için de benzer bir yükseliş öngörmüştür. 

- Aynı şekilde aylara göre ortalama ürün fiyat değişimi grafiği de her yıl artan bir şekilde gittiği için model 2024 yılı için de ocaktan aralığa düzenli bir şekilde ürün fiyatlarının artacağını tahmin etmiştir.

- Yıllara göre ortalama fiyat değişimi incelendiğinde ise 2019'dan 2023'e kadar düzenli bir artış olmasına rağmen, model 2024 de ortalama fiyatların 2023'le neredeyse aynı kalacağını öngörmüştür.

- Yurt dışı ve yurt içinde üretilen ürünler kategori bazında karşılaştırıldığında; et kategorisinde yurt dışında üretilen ürünlerin fiyatının daha düşük olduğu, süt ürünleri kategorisinde ise yurt içinde üretilen ürünlerin fiyatının daha düşük olduğu görüldü. Diğer kategorilerde ise ürün üretim yerine göre çarpıcı fiyat farkı yoktur.

> 🔍 Sonuç olarak model, istatistiksel olarak anlamlı ancak ekonomik olarak gerçek dışı olabilecek bazı tahminler üretmiştir. Bu durum, ekonomik dışsal faktörlerin (örneğin enflasyon, maliyet artışı, arz-talep dengesi) modele dahil edilmemesinden kaynaklıdır.



📩 İletişim: [https://www.linkedin.com/in/esradt/]
