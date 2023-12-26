# Домашнее задание к занятию "7. «Жизненный цикл ПО»" - Баранков Антон"

### Задание
Необходимо создать собственные workflow для двух типов задач: bug и остальные типы задач. Задачи типа bug должны проходить жизненный цикл:  

1. Open -> On reproduce.  
2. On reproduce -> Open, Done reproduce.  
3. Done reproduce -> On fix.  
4. On fix -> On reproduce, Done fix.  
5. Done fix -> On test.  
6. On test -> On fix, Done.  
7. Done -> Closed, Open.  

![Скриншот](img/1.JPG)

Остальные задачи должны проходить по упрощённому workflow:  

1. Open -> On develop.  
2. On develop -> Open, Done develop.  
3. Done develop -> On test.  
4. On test -> On develop, Done.  
5. Done -> Closed, Open.  

![Скриншот](img/2.JPG)

Что нужно сделать:  

1. Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done.  
2. Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done.  
3. При проведении обеих задач по статусам используйте kanban.  
4. Верните задачи в статус Open.  
5. Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.  
6. Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.  

[Файл bug.xml](img/bug.xml)

[Файл Other tasks.xml](img/Other tasks.xml)
