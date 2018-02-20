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

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("UO Jeanne Lace-Up Back Mini Dress", "Women's Clothes", 49, 80);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("UO Marie Prairie Wrap Jumpsuit", "Women's Clothes", 79, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Lazy Oaf Blue Stripe Velour Crew Neck Sweatshirt", "Men's Clothes", 90, 65);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("G-Star Elwood Vintage Aloha Palm Slim Jean", "Men's Clothes", 170, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Sloane Seamed Suede Ankle Boot", "Womens's Shoes", 89, 90);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Vans Classic Slip-On Sneaker", "Mens's Shoes", 50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Mura Bench", "Furniture", 229, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Dempsey Floor Lamp", "Furniture", 89, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Mionix Wei Color Backlit Keyboard", "Tech", 164, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Polaroid Originals Refurbished Silver OneStep Instant Camera", "Tech", 170, 50);
