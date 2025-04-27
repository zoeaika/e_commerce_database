CREATE DATABASE e_commerce;

USE e_commerce


-- created product_category
CREATE TABLE product_category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_category_name VARCHAR(50) NOT NULL
);

-- created brand table
CREATE TABLE brand(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    brand_name VARCHAR(50)
);
-- created table product
CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    product_name VARCHAR(50),
    product_price DECIMAL(10,2) NOT NULL
);


-- created prodct_image table
CREATE TABLE product_image(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_links VARCHAR(250) NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- CREATE table color
CREATE TABLE product_variation(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- create table color
CREATE TABLE color(
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(50) NOT NULL,
    product_variation_id INT,
    FOREIGN KEY (product_variation_id) REFERENCES product_variation(id)
);

-- create table product_item
CREATE TABLE product_item(
id INT PRIMARY KEY AUTO_INCREMENT,
price DECIMAL(10,2) NOT NULL,
product_variation_id INT,
FOREIGN KEY (product_variation_id) REFERENCES product_variation(id)
);

-- CREATE size_category table
CREATE TABLE size_category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100)    
);

-- create size_options
CREATE TABLE size_options(
    id INT PRIMARY KEY AUTO_INCREMENT,
    size_label VARCHAR(25),
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);

-- create attribute category table
CREATE TABLE attribute_category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    attribute_name VARCHAR(50)
);

-- create attribute_type table 
CREATE TABLE Attribute_type(
   id INT PRIMARY KEY AUTO_INCREMENT,
    attribute_name VARCHAR(50) NOT NULL,
    data_type ENUM('text', 'number', 'boolean') NOT NULL
);

-- create product_attribute
CREATE TABLE Product_attribute(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    Attribute_type_id INT,
    attribute_category_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id)
);

-- creating indexes
CREATE INDEX idx_car_category_name ON car_category (category_name);
CREATE INDEX idx_brand_name ON brand (brand_name);
