# Домашнее задание к занятию "6. «Troubleshooting»" - Баранков Антон"

### Задание 1
Для того, чтобы прервать запрос пользователя в MongoDB, нужно выполнить следующие операции:  

Узнать идентификатор (opid) текущей операции пользователя. Можно использовать команду db.currentOp(), которая возвращает список всех активных операций в базе данных.  
Выполнить команду db.killOp(opid), которая останавливает операцию с заданным идентификатором.  

Для того, чтобы решить проблему с долгими (зависающими) запросами в MongoDB, можно попробовать следующие варианты:  

Оптимизировать запросы пользователя, используя фильтры, проекции, сортировки и агрегации. Можно проверить эффективность запросов с помощью команды explain(), которая показывает план выполнения запроса и его статистику.  
Создать индексы для полей, по которым часто производятся поиски. Индексы ускоряют поиск документов в коллекции, используя специальные структуры данных. Можно создать индекс с помощью команды createIndex() и проверить существующие индексы с помощью команды getIndexes().  
Включить логирование операций с помощью команды db.setProfilingLevel(), которая позволяет записывать информацию о выполненных операциях в коллекцию system.profile. Можно анализировать эту информацию с помощью команды db.system.profile.find() и выявлять проблемные операции.  

### Задание 2
Это может ли это быть связано с тем, что память забилась истекшими ключами, которые еще не удалились. Если количество ключей, которые нужно удалить, постоянно растет пропорционально количеству реплик сервиса, то Redis может начать блокироваться при удалении этих ключей.  

### Задание 3
Эта ошибка может быть связана с превышением лимита времени или размера пакета при выполнении длительных или объемных запросов к базе данных. Это может быть особенно актуально для гис-системы, которая работает с большими объемами геоданных.  

Для того, чтобы локализовать проблему, можно попробовать следующее:  

Проверить логи сервера MySQL и клиента, который выполняет запросы. В логах могут быть указаны причины ошибки или дополнительная информация о ней.  
Проверить настройки сервера MySQL, связанные с лимитами времени и размера пакета.  
Проверить производительность сервера MySQL и клиента, а также состояние сети между ними. Возможно, что сервер или клиент перегружены или имеют недостаточно ресурсов для обработки запросов. Также возможно, что сеть имеет высокую задержку или потерю пакетов, что влияет на качество соединения.  

Для того, чтобы решить эту проблему, можно попробовать следующие варианты:  

Увеличить лимиты времени и размера пакета в настройках сервера MySQL.  
Оптимизировать запросы к базе данных. Можно использовать индексы, разбивать большие запросы на меньшие части, уменьшать объем передаваемых данных.  
Улучшить производительность сервера MySQL и клиента, а также состояние сети между ними.  

### Задание 4
Это означает, что сервер PostgreSQL потребляет слишком много памяти и вызывает oom-killer - механизм ядра Linux, который убивает процессы, когда памяти не хватает.   
Для того, чтобы решить эту проблему, можно попробовать следующее:  

Уменьшить потребление памяти сервером PostgreSQL. Можно настроить параметры shared_buffers, work_mem, maintenance_work_mem, temp_buffers и другие, чтобы ограничить количество памяти, которое сервер может использовать.  
Увеличить объем доступной памяти для сервера PostgreSQL. Можно добавить физической памяти или использовать подкачку (swap) на диске, чтобы расширить виртуальную память.  
Отключить или настроить oom-killer. Можно изменить параметры vm.overcommit_memory и vm.overcommit_ratio в ядре Linux, чтобы контролировать поведение oom-killer. Можно установить параметр oom_score_adj для процессов PostgreSQL, чтобы защитить их от убийства oom-killer.  

