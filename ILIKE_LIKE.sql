-- SORU 1: film tablosunda replacement_cost değeri 12.99'dan büyük eşit ve 16.99'dan küçük olan tüm sütunları listeleyiniz.
SELECT * 
FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.98;

-- SORU 2: actor tablosunda first_name sütunu 'Penelope', 'Nick' veya 'Ed' olanların ad ve soyadlarını listeleyiniz.
SELECT first_name, last_name 
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- SORU 3: film tablosunda rental_rate (0.99, 2.99, 4.99) ve replacement_cost (12.99, 15.99, 28.99) olan filmleri listeleyiniz.
SELECT * 
FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99)
  AND replacement_cost IN (12.99, 15.99, 28.99);

-- SORU 4: country tablosunda 'A' harfiyle başlayıp 'a' harfiyle biten ülke isimlerini listeleyiniz.
SELECT country
FROM country
WHERE country LIKE 'A%a';

-- SORU 5: country tablosunda en az 6 karakterli ve 'n' harfiyle biten ülke isimlerini listeleyiniz.
SELECT country
FROM country
WHERE LENGTH(country) >= 6
  AND country LIKE '%n';

-- SORU 6: title sütununda en az 4 adet 'T' veya 't' harfi içeren film isimlerini listeleyiniz.
SELECT title
FROM film
WHERE LENGTH(REGEXP_REPLACE(LOWER(title), '[^t]', '', 'g')) >= 4;

-- SORU 7: title 'C' ile başlayan, length > 90 ve rental_rate = 2.99 olan filmleri listeleyiniz.
SELECT * 
FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;
