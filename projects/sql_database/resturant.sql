.open restaurant.db

-- create tables
CREATE TABLE IF NOT EXISTS customers (
  customer_id INT PRIMARY KEY,
  firstname TEXT,
  lastname TEXT,
  age INT
);

CREATE TABLE IF NOT EXISTS menus (
  menu_id INT PRIMARY KEY,
  rep_id INT,
  name TEXT,
  price INT
);

CREATE TABLE IF NOT EXISTS store (
  store_id INT PRIMARY KEY,
  location TEXT,
  employ_num INT,
  rating FLOAT
);

CREATE TABLE IF NOT EXISTS transactions (
  id INT PRIMARY KEY,
  tran_date DATE,
  menu_id INT,
  customer_id INT,
  store_id INT,
  amount INT,
  FOREIGN KEY (menu_id) REFERENCES menus (menu_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (store_id) REFERENCES store (store_id)
);

CREATE TABLE IF NOT EXISTS ingredient (
  ing_id INT PRIMARY KEY,
  ing_name TEXT,
  ing_price INT
);

CREATE TABLE IF NOT EXISTS recipe (
  row_id int PRIMARY KEY,
  ing_id INT,
  recipe_id INT,
  FOREIGN KEY (ing_id) REFERENCES ingredient (ing_id),
	FOREIGN KEY (recipe_id) REFERENCES menus (rep_id)
);

-- insert data
INSERT INTO customers VALUES
  (101, "Sarah", "Jones", 25),
  (102, "Michael", "Smith", 50),
  (103, "James", "Brown", 22),
  (104, "Mary", "Williams", 24),
  (105, "David", "Miller", 35),
  (106, "Elizabeth", "Johnson", 48),
  (107, "John", "Thomas", 49);

INSERT INTO menus VALUES
  (1, 01, "burger", 100),
  (2, 02, "Sandwich", 50),
  (3, 03, "Ice Cream", 40),
  (4, 04, "Salad", 120),
  (5, 05, "Coffee", 35),
  (6, 06, "french fries", 50 );

INSERT INTO store VALUES
  (001, "Chaing Mai", 3, 8.5),
  (002, "Bangkok", 7, 8),
  (003, "Phuket", 4, 9),
  (004, "Lumpang", 3, 7.5);

INSERT INTO transactions VALUES
  (111, "2023-02-05", 01, 102, 002, 2),
  (112, "2023-10-12", 05, 105, 001, 4),
  (113, "2023-05-06", 02, 103, 001, 2),
  (114, "2023-01-03", 01, 106, 003, 1),
  (115, "2023-11-25,", 04, 106, 003, 2),
  (116, "2023-07-01", 03, 101, 004, 1),
  (117, "2023-04-08", 06, 101, 004, 2),
  (118, "2023-08-04", 06, 104, 001, 5);

INSERT INTO ingredient VALUES
  (11, "sugar", 20),
  (12, "flour", 30),
  (13, "meat", 100),
  (14, "vegetable", 50),
  (15, "cream", 30),
  (16, "coffee", 10);

INSERT INTO recipe VALUES
  (1001, 11, 03),
  (1002, 11, 05),
  (1003, 12, 01),
  (1004, 12, 02),
  (1005, 13, 01),
  (1006, 13, 02),
  (1007, 14, 04),
  (1008, 15, 03),
  (1009, 16, 05);

.read b.sql
