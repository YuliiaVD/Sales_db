--- Створення бази даних з назвою sales_database ---

CREATE DATABASE sales_database;

--- Створення таблиці з назвою sales

CREATE TABLE IF NOT EXISTS sales (
  id INTEGER NOT NULL AUTO_INCREMENT,
  product VARCHAR(128) NOT NULL,
  price DECIMAL(8,2) NOT NULL,
  quantity INTEGER NOT NULL,
  PRIMARY KEY (id)
);

--- Вставка даних ---

INSERT INTO sales (product, price, quantity)
VALUES ('Laptop', 1000, 5),
('Phone', 700, 3),
('Tablet', 500, 2),
('Printer', 300, 4);

--- Виборка всіх записів з таблиці sales ---

SELECT * FROM sales;

--- Вибірка з обмеженням (LIMIT) перші два записи з таблиці sales ---

SELECT * FROM sales LIMIT 2;

--- Обчислення суми (SUM) загальну вартість всіх продуктів у таблиці sales --- 

SELECT SUM(price) as 'Total price' FROM sales;

--- Групування даних (GROUP BY) ---

SELECT 
  product AS "Product",
  SUM(quantity) AS "Total quota",
  ROUND(AVG(price), 2) AS "Average price"
FROM sales 
GROUP BY product;

