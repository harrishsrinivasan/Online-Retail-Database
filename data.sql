INSERT INTO customer VALUES
(101, "Olivia", "oliv12@gmail.com"),
(102, "Eren", "eren23@outlook.com"),
(103, "Rahul", "rbansal@gmail.com"),
(104, "Cain", "cc1234@gmail.com"),
(105, "Lucy", "lucy45@gmail.com");

INSERT INTO product_category VALUES
("M101", "Mobiles"),
("C101", "Computers"),
("A101", "Appliances"),
("M201", "Men's Fashion"),
("M202", "Women's Fashion"),
("K301", "Kitchen"),
("B401", "Beauty"),
("H501", "Health"),
("S601", "Sports"),
("M701", "Movies"),
("V801", "Videogames");

INSERT INTO products VALUES
('P001', 'M101', 'Smartphone', 499.99),
('P002', 'C101', 'Laptop', 899.99),
('P003', 'M701', 'Television', 699.99),
('P004', 'A101', 'Washing Machine', 399.99),
('P005', 'M202', 'Shirt', 29.99),
('P006', 'M202', 'Dress', 49.99),
('P007', 'M202', 'T-shirt', 19.99),
('P008', 'M201', 'Jeans', 39.99),
('P009', 'A101', 'Microwave Oven', 149.99),
('P010', 'K301', 'Blender', 59.99);

INSERT INTO wishlist VALUES
(101, 'P001'),
(101, 'P003'),
(102, 'P002'),
(103, 'P005'),
(104, 'P004'),
(105, 'P007');

INSERT INTO shoppingcart VALUES
(101, 'P001', 2),
(101, 'P003', 3),
(102, 'P002', 1),
(103, 'P005', 1),
(104, 'P004', 2),
(105, 'P007', 1);

INSERT INTO payment (customer_id, payment_method, card_number) VALUES
(101, 'Netbanking', 1234623464),
(102, 'Creditcard', 8573901846),
(103, 'Creditcard', 6481034867),
(104, 'Netbanking', 6482048574),
(105, 'Creditcard', 2385028572),
(101, 'Debitcard', 23849158624),
(102, 'Debitcard', 16584981354),
(103, 'Netbanking', 1687486235),
(104, 'Netbanking', 4567456125),
(105, 'Creditcard', 7914952438);

INSERT INTO shippingdetails (customer_id, address, city) VALUES
(101, "123 Main St", "Noida"),
(102, "456 Elm St", "Delhi"),
(103, "789 Oak St", "Ghaziabad"),
(104, "101 Pine St", "Ghaziabad"),
(105, "202 Maple St", "Noida");
