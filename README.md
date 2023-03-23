# Домашнее задание к занятию "12.4. «SQL. Часть 2» - Баранков Антон"

### Задание 1
SELECT st.staff_id, st.first_name, st.last_name, c.city, COUNT(cu.customer_id) AS customer_count  
FROM store s  
JOIN staff st ON s.store_id = st.store_id  
JOIN address a ON s.address_id = a.address_id  
JOIN city c ON a.city_id = c.city_id  
JOIN customer cu ON s.store_id = cu.store_id  
GROUP BY st.staff_id, st.first_name, st.last_name, c.city  
HAVING customer_count > 300;  

### Задание 2
SELECT COUNT(*) FROM film  
WHERE length > (SELECT AVG(length) FROM film);  

### Задание 3
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, COUNT(*) AS rentals, SUM(amount) AS total_amount  
FROM payment GROUP BY month ORDER BY total_amount DESC LIMIT 1;  
