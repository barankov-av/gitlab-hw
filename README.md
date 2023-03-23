# Домашнее задание к занятию "12.5. «Индексы» - Баранков Антон"

### Задание 1
SELECT SUM(index_length) AS SUM_index, SUM(data_length + index_length) AS SUM_full, SUM(index_length)/SUM(data_length + index_length)*100 AS 'percent_index/full'  
FROM information_schema.TABLES WHERE table_schema = 'sakila';  
 

### Задание 2
Для оптимизации:  
использован оператор JOIN  
убрана лишняя таблица film, так как она не используется в выражении select  
оператор where заменен на условие в операторе join  
операторы distinct и OVER заменены на group by и sum  

Предлагаемый вариант кода и индекса:  

alter table payment add index idx_rental_payments (payment_date, customer_id);  

select concat(c.last_name, ' ', c.first_name), sum(p.amount)  
from payment p  
join rental r on p.payment_date = r.rental_date and date(p.payment_date) = '2005-07-30'  
join customer c on r.customer_id = c.customer_id  
join inventory i on i.inventory_id = r.inventory_id  
join film f on i.film_id = f.film_id  
group by c.last_name, c.first_name;  
