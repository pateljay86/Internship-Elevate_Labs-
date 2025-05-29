---Total sales per region:
SELECT region, SUM(quantity * price) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;


---Best-selling product category:
SELECT category, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY category
ORDER BY total_quantity DESC;


---Customers with highest spending:
SELECT customer_name, SUM(quantity * price) AS spending
FROM sales_data
GROUP BY customer_name
ORDER BY spending DESC
LIMIT 5;


---Products sold after a specific date:
SELECT * FROM sales_data
WHERE order_date > '2024-05-01';
