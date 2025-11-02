USE sales;
SHOW tables;

SELECT * FROM sales.customers;
SELECT * FROM sales.date;
SELECT * FROM sales.markets;
SELECT * FROM sales.products;
SELECT * FROM sales.transactions;

SELECT sales.transactions.*, sales.date.*
FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020
AND sales.transactions.market_code = "Mark001";


SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020
AND sales.transactions.market_code = "Mark001";