-- Invalid price
SELECT * FROM products WHERE price <= 0;

-- Orders without valid customers
SELECT o.*
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Future-dated orders
SELECT * FROM orders
WHERE order_date > CURRENT_DATE;

-- Incorrect total amount
SELECT o.order_id, o.total_amount, (p.price * o.quantity) AS expected_amount
FROM orders o
JOIN products p
ON o.product_id = p.product_id
WHERE o.total_amount != (p.price * o.quantity);
