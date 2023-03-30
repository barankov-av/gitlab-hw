# Домашнее задание к занятию "12.7. «Репликация и масштабирование. Часть 2» - Баранков Антон"

### Задание 1
Опишите основные преимущества использования масштабирования методами:  
• активный master-сервер и пассивный репликационный slave-сервер;  
В этом методе основной сервер (master) фиксирует все изменения в системе (чтение, запись), а репликационный сервер (slave) дублирует все изменения в системе, но доступен только для чтения. Это позволяет увеличить производительность и надежность системы.  
• master-сервер и несколько slave-серверов;  
Этот метод позволяет улучшить отказоустойчивость (если один из серверов выходит из строя, другие серверы продолжают работать), также возможно распределить нагрузку на несколько серверов, что позволяет увеличить скорость обработки запросов и сократить время отклика системы, масштабируемость за счет подключения новых серверов.  
• активный сервер со специальным механизмом репликации — distributed replicated block device (DRBD);  
Данный метод заключается в зеркальном отображении блочного устройства одного сервера на другой сервер. Преимуществом является высокая надежность и быстрое восстановление, т.к. обеспечивается репликация данных на резервный сервер, что позволяет быстро восстановить систему в случае сбоев. DRBD может работать с различными файловыми системами и приложениями. Также DRBD легко устанавливается и настраивается.  
• SAN-кластер.  
SAN-кластер обеспечивает высокую доступность и отказоустойчивость данных благодаря использованию специализированных хранилищ данных и сетей хранения данных. Это позволяет увеличить производительность и масштабируемость системы, а также обеспечить более эффективное управление данными. Кроме того, SAN-кластер может быть настроен для автоматического переключения на резервные узлы в случае сбоев, что обеспечивает непрерывную работу системы и минимизирует время простоя. Другими преимуществами SAN-кластера являются возможность удаленного доступа к данным, повышенная безопасность и защита данных, а также возможность использования различных технологий хранения данных, таких как RAID и снапшоты.  

### Задание 2
А) Горизонтальный шаринг базы данных предполагает разбиение таблиц на несколько частей, которые хранятся на разных серверах. В данном случае можно разбить таблицы на следующие части:  

1. Пользователи:  
- Первый сервер хранит пользователей с id от 1 до 1000.  
- Второй сервер хранит пользователей с id от 1001 до 2000.  

2. Книги:  
- Первый сервер хранит книги с id от 1 до 10000.  
- Второй сервер хранит книги с id от 10001 до 20000.  

3. Магазины:  
- Первый сервер хранит магазины с id от 1 до 500.  
- Второй сервер хранит магазины с id от 501 до 1000.  

Метод master-сервер и несколько slave-серверов.  

Б) При вертикальном шаринге таблицы или группы таблиц хранятся на разных серверах. Например:  

1. Пользователи на первом сервере.  
2. Книги на втором сервере.  
3. Магазины на третьем сервере.  

Метод master-сервер и несколько slave-серверов.  

![Скриншот](img/1.jpg)
