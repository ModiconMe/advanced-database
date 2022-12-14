-- INNER JOIN
SELECT * FROM customer AS c
JOIN customer_order AS co ON c.id = co.customer_id
JOIN order_item AS oi ON oi.order_id = co.id
JOIN product AS p ON oi.product_id = p.id;

-- LEFT JOIN
SELECT * FROM customer AS c
LEFT JOIN customer_order AS co ON c.id = co.customer_id;

-- LEFT ONLY JOIN
SELECT * FROM customer AS c
LEFT JOIN customer_order AS co ON c.id = co.customer_id
WHERE co.customer_id = NULL;

-- FULL JOIN
SELECT * FROM customer AS c
FULL JOIN customer_order AS co ON c.id = co.customer_id;