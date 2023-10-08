# Домашнее задание к занятию "4. «Продвинутые методы работы с Terraform»" - Баранков Антон"

### Задание 1
1. Возьмите из демонстрации к лекции готовый код для создания ВМ с помощью remote-модуля.  
2. Создайте одну ВМ, используя этот модуль. В файле cloud-init.yml необходимо использовать переменную для ssh-ключа вместо хардкода. Передайте ssh-ключ в функцию template_file в блоке vars ={}.   Воспользуйтесь примером. Обратите внимание, что ssh-authorized-keys принимает в себя список, а не строку.  
3. Добавьте в файл cloud-init.yml установку nginx.  
4. Предоставьте скриншот подключения к консоли и вывод команды sudo nginx -t.  

![Скриншот](img/1.JPG)

### Задание 2
1. Напишите локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне, объявленной при вызове модуля, например: ru-central1-a.  
2. Вы должны передать в модуль переменные с названием сети, zone и v4_cidr_blocks.  
3. Модуль должен возвращать в root module с помощью output информацию о yandex_vpc_subnet. Пришлите скриншот информации из terraform console о своем модуле. Пример: > module.vpc_dev  
4. Замените ресурсы yandex_vpc_network и yandex_vpc_subnet созданным модулем. Не забудьте передать необходимые параметры сети из модуля vpc в модуль с виртуальной машиной.  
5. Откройте terraform console и предоставьте скриншот содержимого модуля. Пример: > module.vpc_dev.  
6. Сгенерируйте документацию к модулю с помощью terraform-docs.  

![Скриншот](img/2.1.JPG)

[Файл Readme.md, сгенерированный с помощью terraform-docs](img/vpc_dev/Readme.md)

[Файл main.tf](img/vpc_dev/main.tf)

[Файл main.tf для модуля vpc_dev](img/vpc_dev/main.tf)

[Файл outputs.tf для модуля vpc_dev](img/vpc_dev/outputs.tf)

[Файл variables.tf для модуля vpc_dev](img/vpc_dev/variables.tf)

### Задание 3
1. Выведите список ресурсов в стейте.  
2. Полностью удалите из стейта модуль vpc.  
3. Полностью удалите из стейта модуль vm.  

**На скриншоте приведены команды и результат выполнения задания по пп. 1-3.**  

![Скриншот](img/3.1.JPG)

4. Импортируйте всё обратно. Проверьте terraform plan. Изменений быть не должно. Приложите список выполненных команд и скриншоты процессы.  

**В верхней части каждого скриншота приводятся разные команды и ниже результат их выполнения.**  

![Скриншот](img/3.2.JPG)

![Скриншот](img/3.3.JPG)

![Скриншот](img/3.4.JPG)

![Скриншот](img/3.5.JPG)
