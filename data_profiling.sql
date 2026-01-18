-- Missing values
SELECT * FROM customers WHERE email IS NULL;

-- Duplicate records
SELECT email, COUNT(*)
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
