CREATE DATABASE onlineretail;

USE onlineretail;

CREATE TABLE customer(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(20),
    emailID VARCHAR(20)
);

CREATE TABLE product_category(
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(20)
);

CREATE TABLE products(
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(50),
    product_name VARCHAR(20),
    price DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE wishlist(
    customer_id INT,
    product_id VARCHAR(10),
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE shoppingcart(
    customer_id INT,
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payment(
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    payment_method VARCHAR(50),
    card_number FLOAT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE shippingdetails(
    shipping_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    address VARCHAR(50) UNIQUE,
    city VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
