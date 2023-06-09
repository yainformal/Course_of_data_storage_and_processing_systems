#HW 2
# Тема
## SQLite как пример СУБД для работы с реляционными БД.

### Цель домашнего задания
Применить полученные знание и научиться обрабатывать транзакционные данные.

 

 

### Условия
 

Дан csv-файл с транзакциями с 2023–01-01 до 2023-04-20. Необходимо в Jupyter-ноутбуке выполнить следующие пункты, используя SQLite:

### Шаг 1
(Балл - 0.2) Необходимо скачать CSV-файл — «final_transactions.csv», создать таблицу transaction_bd со всеми полями, загрузить данные из файла в таблицу и оставить таблицу со структурой:

(0, 'TX_DATETIME', 'NUMERIC', 0, None, 0) - время транзакций
(1, 'CUSTOMER_ID', 'INTEGER', 0, None, 0) - клиент
(2, 'TX_AMOUNT', 'REAL', 0, None, 0) - сумма транзакций

Комментарий: Можно оставить все 5 полей, но запросы будут выполняться чуть дольше.

### Шаг 2
(Балл - 0.1 за каждый пункт) Написать следующие запросы к таблице transaction_bd:

A. Вывести всех клиентов, у которых сумма транзакций больше 700000 за весь период (сортируя клиентов по возрастанию);
B. Вывести всех клиентов, у которых сумма транзакций больше 200000 за период 01.01.2023 - 13.01.2023 (сортируя клиентов по возрастанию);
C. Вывести тех клиентов, у которых id начинается с 4 и количество транзакций за весь период более 444;
D. Создать флаг доходности клиентов по логике:
1. Если сумма транзакций не более 50000, тогда вывести 'низкая доходность';
2. Если сумма транзакций больше 50000 и не более 10000 тогда вывести 'средняя доходность';
3. Если сумма транзакций больше 100000 тогда вывести 'высокая доходность'.
E. Посмотреть количество клиентов с каждым видом доходности (из пункта 2.d);
F. Вывести сумму транзакций за каждый день (сортируя дни по возрастанию).
### Шаг 3
(Балл - 0.2) Подготовить дашборд с помощью Dash по пункту 2.f, включив туда графики bar и histogram; вставить в конце ноутбука скрин графиков из дашборда.