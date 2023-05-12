# Домашнее задание к занятию "1. "Введение в виртуализацию. Типы и функции гипервизоров. Обзор рынка вендоров и областей применения" - Баранков Антон"

### Задание 1
Полная виртуализация (аппаратная виртуализация) — это технология виртуализации, которая позволяет запускать несколько изолированных виртуальных машин на одном физическом сервере. В этом случае каждая виртуальная машина имеет свою собственную копию операционной системы и полный доступ к аппаратным ресурсам.  
Паравиртуализация — это технология виртуализации, которая позволяет запускать несколько изолированных виртуальных машин на одном физическом сервере. В этом случае каждая виртуальная машина имеет свою собственную копию операционной системы, но использует общие ресурсы.  
Виртуализация на основе ОС — это технология виртуализации, которая позволяет запускать несколько изолированных приложений на одном физическом сервере. В этом случае каждое приложение работает в своем собственном контейнере и использует общие ресурсы операционной системы.  

### Задание 2
Высоконагруженная база данных, чувствительная к отказу - физический сервер, т.к. обеспечивается максимальная производительность и надежность.  
Различные web-приложения - виртуализация уровня ОС, т.к. можно запускать несколько изолированных приложений на одном физическом сервере и использовать общие ресурсы операционной системы.  
Windows-системы для использования бухгалтерским отделом – паравиртуализация, т.к. можно запускать несколько изолированных виртуальных машин на одном физическом сервере, каждая из которых имеет свою собственную копию операционной системы, но использует общие ресурсы.  
Системы, выполняющие высокопроизводительные расчёты на GPU - физические сервера, т.к. обеспечивается максимальная производительность и надежность.  

### Задание 3
1. Можно использовать систему управления виртуализацией VMware vSphere. Она обеспечивает высокую производительность и надежность, а также поддерживает Windows-инфраструктуру. VMware vSphere также предоставляет программные балансировщики нагрузки, репликацию данных и автоматизированный механизм создания резервных копий.  
2. Можно использовать системы управления виртуализацией KVM или QEMU. Они являются бесплатными и open source-решением, которое обеспечивает высокую производительность и поддерживает Linux- и Windows-инфраструктуру.  
3. Можно использовать систему управления виртуализацией Hyper-V. Она является бесплатной и максимально совместимой с Windows-инфраструктурой.  
4. Можно использовать систему управления виртуализацией VirtualBox. Она является бесплатной и позволяет запускать несколько изолированных виртуальных машин на одном физическом сервере.
Можно также использовать Hypervisor ESXi от VMware vSphere.  

### Задание 4
Гетерогенная среда виртуализации (использование нескольких систем управления виртуализацией одновременно) может привести к сложностям в управлении и мониторинге систем, проблемам совместимости между различными системами управления виртуализацией.  
Для минимизации этих рисков и проблем необходимо использовать стандартные протоколы и форматы данных. Кроме того, необходимо использовать инструменты управления и мониторинга, которые поддерживают работу с различными системами управления виртуализацией.  
Скорее бы не создавал гетерогенную среду виртуализации в связи с вышеуказанными проблемами, рисками и сложностями настройки.

