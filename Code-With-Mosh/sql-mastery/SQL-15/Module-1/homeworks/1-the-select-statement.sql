USE sql_store;

-- This is legal. It returns two columns row with 1 and 2 as values.
-- SELECT 1, 2

SELECT *
FROM customers
WHERE customer_id = 1
ORDER BY first_name
