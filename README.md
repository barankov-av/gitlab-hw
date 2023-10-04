# Домашнее задание к занятию "3. «Управляющие конструкции в коде Terraform»" - Баранков Антон"

### Задание 1
Приложите скриншот входящих правил «Группы безопасности» в ЛК Yandex Cloud или скриншот отказа в предоставлении доступа к preview-версии.  

![Скриншот](img/1.JPG)

### Задание 2
1. Создайте файл count-vm.tf. Опишите в нём создание двух одинаковых ВМ web-1 и web-2 (не web-0 и web-1) с минимальными параметрами, используя мета-аргумент count loop. Назначьте ВМ созданную в первом задании группу безопасности.  

[Файл count-vm.tf](img/2/count-vm.tf)

![Скриншот](img/2/2.1.JPG)

![Скриншот](img/2/2.2.JPG)

2. Создайте файл for_each-vm.tf. Опишите в нём создание двух ВМ с именами "main" и "replica" разных по cpu/ram/disk , используя мета-аргумент for_each loop. Используйте для обеих ВМ одну общую переменную типа list(object({ vm_name=string, cpu=number, ram=number, disk=number })).  
3. ВМ из пункта 2.2 должны создаваться после создания ВМ из пункта 2.1.  
4. Используйте функцию file в local-переменной для считывания ключа ~/.ssh/id_rsa.pub и его последующего использования в блоке metadata, взятому из ДЗ 2.  
5. Инициализируйте проект, выполните код.  

[Файл for_each-vm.tf](img/2/for_each-vm.tf)

![Скриншот](img/2/2.3.JPG)

### Задание 3
1. Создайте 3 одинаковых виртуальных диска размером 1 Гб с помощью ресурса yandex_compute_disk и мета-аргумента count в файле disk_vm.tf.  
2. Создайте в том же файле одиночную(использовать count или for_each запрещено из-за задания №4) ВМ c именем "storage" . Используйте блок dynamic secondary_disk{..} и мета-аргумент for_each для подключения созданных вами дополнительных дисков.  

[Файл disk_vm.tf](img/3/disk_vm.tf)

![Скриншот](img/3/1.JPG)

### Задание 4
1. В файле ansible.tf создайте inventory-файл для ansible. Используйте функцию tepmplatefile и файл-шаблон для создания ansible inventory-файла из лекции. Готовый код возьмите из демонстрации к лекции demonstration2. Передайте в него в качестве переменных группы виртуальных машин из задания 2.1, 2.2 и 3.2, т. е. 5 ВМ.  
2. Инвентарь должен содержать 3 группы [webservers], [databases], [storage] и быть динамическим, т. е. обработать как группу из 2-х ВМ, так и 999 ВМ.  
3. Выполните код. Приложите скриншот получившегося файла.  

[Файл ansible.tf](img/4/ansible.tf)

[Файл inventory.tftpl](img/4/inventory.tftpl)

![Скриншот](img/4/1.JPG)
