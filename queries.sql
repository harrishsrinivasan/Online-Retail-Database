-- View all tables
SELECT * FROM customer;
SELECT * FROM product_category;
SELECT * FROM products;
SELECT * FROM shippingdetails;
SELECT * FROM wishlist;
SELECT * FROM shoppingcart;
SELECT * FROM payment;

-- INNER JOIN between customer and wishlist
SELECT c.customer_name, w.product_id
FROM customer c
INNER JOIN wishlist w ON c.customer_id = w.customer_id;

-- LEFT JOIN between customer and shoppingcart
SELECT c.customer_name, s.product_id
FROM customer c
LEFT JOIN shoppingcart s ON c.customer_id = s.customer_id;

-- RIGHT JOIN between payment and customer
SELECT p.payment_id, c.customer_name
FROM payment p
RIGHT JOIN customer c ON p.customer_id = c.customer_id;
