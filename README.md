# Домашнее задание к занятию "12.3. «SQL. Часть 1» - Баранков Антон"

### Задание 1
SELECT district FROM address  
WHERE district LIKE 'K%a' AND district NOT LIKE '% %';  

### Задание 2
SELECT * FROM payment  
WHERE amount > 10.00 AND payment_date BETWEEN '2005-06-15 00:00:00' AND '2005-06-18 23:59:59';  

### Задание 3
SELECT f.title, r.rental_date FROM film f  
JOIN inventory i ON i.film_id = f.film_id  
JOIN rental r ON r.inventory_id = i.inventory_id  
ORDER BY rental_date DESC, title  
LIMIT 5;  

### Задание 4
SELECT REPLACE(LOWER(first_name),'ll', 'pp'), LOWER(last_name) FROM customer  
WHERE first_name LIKE '%Kelly%' OR first_name LIKE '%Willie%';  

### Задание 5*
SELECT  
SUBSTRING_INDEX(email, '@', 1) AS before_at,  
SUBSTRING_INDEX(email, '@', -1) AS after_at  
FROM customer;  

### Задание 6*
SELECT  
CONCAT(UPPER(LEFT((SUBSTRING_INDEX(email, '@', 1)), 1)), LOWER(SUBSTRING(SUBSTRING_INDEX(email, '@', 1), 2))) AS before_at,  
CONCAT(UPPER(LEFT((SUBSTRING_INDEX(email, '@', -1)), 1)), LOWER(SUBSTRING(SUBSTRING_INDEX(email, '@', -1), 2))) AS after_at  
FROM customer;
