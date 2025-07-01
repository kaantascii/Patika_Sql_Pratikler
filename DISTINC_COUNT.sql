
-- SORU 1: film tablosundaki replacement_cost sütununda bulunan birbirinden farklı değerleri listeleyiniz.
SELECT DISTINCT replacement_cost
FROM film;

-- SORU 2: film tablosundaki replacement_cost sütunundaki birbirinden farklı kaç tane değer vardır?
SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi
FROM film;

-- SORU 3: film isimlerinden (title) 'T' harfi ile başlayan ve rating değeri 'G' olan kaç tane film vardır?
SELECT COUNT(*) AS T_ilebaşlayana_ratingli_filmler
FROM film
WHERE title LIKE 'T%'
  AND rating = 'G';

-- SORU 4: country tablosundaki ülke isimlerinden (country) 5 karakterden oluşan kaç ülke vardır?
SELECT COUNT(*) AS bes_karakterli_ulke_sayisi
FROM country
WHERE LENGTH(country) = 5;


-- SORU 5: city tablosundaki şehir isimlerinden (city) 'R' veya 'r' harfi ile biten kaç şehir vardır?
SELECT COUNT(*) AS r_ile_biten_sehir_sayisi
FROM city
WHERE city ILIKE '%r';

