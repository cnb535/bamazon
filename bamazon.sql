DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
  item_id INT(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price INT(11) NOT NULL,
  stock_quantity INT(11),
  PRIMARY KEY(item_id)
);
