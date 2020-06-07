-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Haz 2020, 12:59:10
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `program`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(5) NOT NULL,
  `ayar_user` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ayar_pass` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_user`, `ayar_pass`) VALUES
(1, 'it-sena', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `makale_id` int(5) NOT NULL,
  `makale_text` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `makale_title` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `makale_img` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `makale_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makale_id`, `makale_text`, `makale_title`, `makale_img`, `makale_date`) VALUES
(1, 'İnsan ve hayvanları konu alan resimlerdir. Figür resmi bütün vücudu gösteren çalışmalardır. Hareket etmeyen modeller kullanılarak yapılır. Hareketli modellerin çizimi güç olduğu için bu şekilde çalışılmalıdır. Bir kompozisyonda, konuya anlam verebilecek figürlere birinci planda, yardımcı figürlere de ikinci planda yer verilmelidir. Dik ve yatay çizgiler kullanılarak bolca alıştırma yapmak gerekir.\r\n\r\nPortre resminde olduğu gibi figür resminde de belli oran ve ölçüler vardır. Erkekte omuz baş genişliğinin iki buçuk katı kadında 2 katıdır. Kolların yana açılmış hali insan boyu kadardır. Omuzdan dirseğe, dirsekten bileğe uzaklıklar eşittir.\r\n\r\nResim türleri yıllardır resim sanatında kullanılan uygulamalara, bakış açılarına ve anlayışlara göre şekillenmiştir. Evrensel nitelikte olduğu için her toplumda sanatçılar tarafından kullanılmış ve resim tekniğinin temellerini oluşturmuştur.', 'Figür Resim', 'images/fi.jpg', '2020-06-06'),
(2, 'Belli bir kişinin yüz ve başının konu alındığı resimlerdir. Omuzlara hatta istenirse bele kadar resmedilebilir. Burada esas olan kişinin yüzündeki ifadesinin doğru aktarılabilmesidir. Karakterinin canlandırılması, gölge oyunlarının yapılması ve yüzünün anatomik yapısının incelenmesi ele alınan başlıca konular arasındadır. Modelin yüz yapısını incelemek ve resme yerleştirirken kaş, göz, burun yapısına dikkat etmek gerekir.\r\n\r\nPortre resimlerinde küçük bir fırça vuruşu, bir kaç çizgi veya leke ifadeyi olduğu gibi değiştirebilir. En iyi portreler, başı biraz sağa veya sola döndürerek elde edilir. Ayrıca modelin hareket etmemesi gerekir. İdeal poz ışığın yandan gelmesi ve modelin karşıya doğru bakması ile elde edilir.', 'Peyzaj', 'images/peyzaj.jpg', '2020-06-06'),
(3, 'Sanatın temelini oluşturan çizgi, yazının da kendisidir. Duygu, düşünce, hayal vegerçeklerin çizilmeden aktarılamayacağı, okuyucuya ulaşamayacağı gibi çizmeden birobjenin, kütlenin, görüntünün aktarılamayacağı da aşikârdır. Yazarlar kâğıdı çizerek,duygularını harf dediğimiz şekillerle aktarırken, sanatçılarda çizgi aracılığıyla duygu vedüşüncelerini, hayallerini, gözlemlerini şekiller ve formlarla oluştururlar. Sanatın vesanatçının görsel yaratıda ana kullanım unsuru olan çizgi, insan yaşamının en önemliiletişim ve anlaşma aracıdır. Her yazı karakteri kriminal olarak kişinin psikolojik yapısınınasıl ortaya çıkarırsa, sanatçı içinde kullandığı çizgi kişiliğinin ve duygularınınyansımasıdır. Ritim ise “seste, harekette, biçimde, renkte, konumda, yaşantıda, doğada,düzenli, sistemli tekrarlar, yinelemeler, yinelenmelerdir” (Demir,1993:110). Sanatçıeserlerini, izleyiciye kendini anlatmak ve onları etkilemek için yaratır. Sanatçının tümçabası, izleyiciyi belli bir zaman için bile olsa, yaptığı eserde kendi zevkini duygu vedüşüncelerini aşılamak, aktarmaktır. Sanatçı, bunun için eserinde çizgi ve ritimdenyararlanır. Fischer’in (1995) dediği gibi “sanatın görevi açık kapıları yıkmaktan çok, kilitlikapıları açmaktır.”Sanatçı için önemli olan, iç dünyasını, duygu ve düşüncelerini, sevincini, kederini, kısacasıtinini eserine aktararak izleyiciye sunmadaki ilk yol olan çizgi ve çizgideki ritimdir', 'Resim Sanatında Çizgi Ve Çizgi Ritmi Üzerine', 'images/cizgicalismasi.jpg', '2020-06-06'),
(4, 'Cansız doğa resimleri anlamına gelen natürmort, en çok tercih edilen türlerden biridir. Dalından koparılmış meyvelerden tabağa, dalından koparılmış çiçeklerden objelere kadar her şey natürmort resimlerinin konusudur. Kompozisyon, renk ve leke gibi konular bu dal için oldukça önemlidir. Natürmort çalışmalarında modeli hazırlamak, resim yapmak kadar önemlidir. Model hazırlarken dikkat etmemiz gereken noktalar:\r\n\r\nModeli göz seviyesine göre hazırlamalıyız.\r\nModele uzaklığımız 3 – 4 metre arasında olmalıdır.\r\nModele fon yapılmalıdır. Modelde sıcak renkler çoksa, fon için kumaşın rengi soğuk renklerden seçilmelidir.\r\nModelde yuvarlak biçimler varsa, fonda dik çizgiler olmalı, model de hareketli çizgiler çoksa fon sade olmalıdır.\r\nIşık tek bir yerden gelmelidir. Her yönden alınan ışık modelin biçim ve renk değerlerini iyi göstermez.\r\nModel olarak seçilen eşyalar değişik şekillerde olmalıdır.', 'Natürmort', 'images/resim.jpg', '2020-06-06'),
(5, 'Belli bir kişinin yüz ve başının konu alındığı resimlerdir. Omuzlara hatta istenirse bele kadar resmedilebilir. Burada esas olan kişinin yüzündeki ifadesinin doğru aktarılabilmesidir. Karakterinin canlandırılması, gölge oyunlarının yapılması ve yüzünün anatomik yapısının incelenmesi ele alınan başlıca konular arasındadır. Modelin yüz yapısını incelemek ve resme yerleştirirken kaş, göz, burun yapısına dikkat etmek gerekir.\r\n\r\nPortre resimlerinde küçük bir fırça vuruşu, bir kaç çizgi veya leke ifadeyi olduğu gibi değiştirebilir. En iyi portreler, başı biraz sağa veya sola döndürerek elde edilir. Ayrıca modelin hareket etmemesi gerekir. İdeal poz ışığın yandan gelmesi ve modelin karşıya doğru bakması ile elde edilir.', 'Portre', 'images/portre.jpg', '2020-06-06'),
(6, 'Bu türde bina içini konu alınırken en önemli özellik perspektifin doğru şekilde yapılmasıdır. Aksi durumda şekiller bozulacaktır. Ancak böyle bir durumla karşılaştığınızda resmi yapan kişinin perspektifi bilmediğini düşünmemeli, aksine özellikle yaptığını gözlemlemelisiniz.', 'Enteriyör', 'images/se.jpg', '2020-06-06');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`makale_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayar`
--
ALTER TABLE `ayar`
  MODIFY `ayar_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `makale_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
