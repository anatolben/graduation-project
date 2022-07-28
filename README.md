# Дипломный проект

## по курсу DVPSPDC-2 DevOps-инженер

### Описание

Проект состоит из трех стадий, стадии определяются применяемыми инструментами:
1. подготовка образа диска при помощи Packer,
2. развертывание инфраструктуры проекта в Yandex Cloud при помощи Terraform,
3. установка и настройка приложений проекта при помощи Ansible.

### Выполняемые действия

#### Стадия 1.
В Yandex Cloud создается необходимая инфраструктура для сборки образа.  
Собирается образ.  
Инфраструктура удаляется.  

Результатом является собранный образ.  

#### Стадия 2.
На основании собранного образа разворачиваются виртуальные серверы и инфраструктура в Yandex Cloud, с заданными ресурсами.  

Результатом является созданная в Yandex Cloud инфраструктура.  

#### Стадия 3.

Состоит из пяти частей, определяемых ролями Anible:  

часть 1 - Nginx,  
часть 2 - MySQL Cluster,  
часть 3 - Wordpress,  
часть 4 - Gitlab и gitlab runner,  
часть 5 - Prometheus, Grafana, Alertmanager.  

Результатом являются развернутые приложения с полностью настроенным взаимодействием между ними.   

### Последовательность команд запуска проекта.

```bash
$ cd packer
$ source ./manage_image.sh 
$ cd ../terraform
$ terraform init
$ terraform plan
$ terraform apply
$ source ./export_vars.sh
$ cd ../ansible
$ ansible-playbook -v site.yml -i inventory/prod.yml --diff --ask-vault-pass
$ cd ../terraform
$ terraform destroy
$ cd ../packer
$ ./manage_image.sh
```

### Результат развертывания проекта в сриншотах:

https://www.snark.ml (WordPress)    
[screenshot 01](https://i.imgur.com/layd7vl.png)  
![screenshot 01](https://i.imgur.com/layd7vl.png)  

[screenshot 02](https://i.imgur.com/2vtr8JT.png)  
![screenshot 02](https://i.imgur.com/2vtr8JT.png)  

https://gitlab.snark.ml (Gitlab)  
[screenshot 03](https://i.imgur.com/Rg0hV7y.png)  
![screenshot 03](https://i.imgur.com/Rg0hV7y.png)  

[screenshot 04](https://i.imgur.com/sEwJ3VB.png)  
![screenshot 04](https://i.imgur.com/sEwJ3VB.png)  

https://grafana.snark.ml (Grafana)  
[screenshot 05](https://i.imgur.com/sgXOHq1.png)  
![screenshot 05](https://i.imgur.com/sgXOHq1.png)  

https://prometheus.snark.ml (Prometheus)  
[screenshot 06](https://i.imgur.com/2ZIGizr.png)  
![screenshot 06](https://i.imgur.com/2ZIGizr.png)  

https://alertmanager.snark.ml (Alert Manager)
[screenshot 07](https://i.imgur.com/AAsh7Pm.png)  
![screenshot 07](https://i.imgur.com/AAsh7Pm.png)  
