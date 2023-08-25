
--1Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.

--products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('chair','44.00','false');
-- INSERT 0 1

--2Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.

-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('stool', '25.99', 'true');
-- INSERT 0 1

--3Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.

-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('table', '124.00', 'false');
-- INSERT 0 1

--4Display all of the rows and columns in the table.

-- products_db=# SELECT * FROM products;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   1 | chair |    44 | f
--   2 | stool | 25.99 | t
--   3 | table |   124 | f
-- (3 rows)

--5Display all of the names of the products.

-- products_db=# SELECT name FROM products 
-- products_db-# ;
--  name  
-- -------
--  chair
--  stool
--  table
-- (3 rows)

--6Display all of the names and prices of the products.

-- products_db=# SELECT name, price FROM products;
--  name  | price 
-- -------+-------
--  chair |    44
--  stool | 25.99
--  table |   124
-- (3 rows)

--7Add a new product - make up whatever you would like!

-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('ring', '21.12', 'true');
-- INSERT 0 1

--8Display only the products that can_be_returned.

-- products_db=# SELECT name FROM products WHERE can_be_returned = 'true';
--  name  
-- -------
--  stool
--  ring
-- (2 rows)

--9Display only the products that have a price less than 44.00.

-- products_db=# SELECT name, price FROM products WHERE price<'44.00';
--  name  | price 
-- -------+-------
--  stool | 25.99
--  ring  | 21.12
-- (2 rows)

--10Display only the products that have a price in between 22.50 and 99.99.

-- products_db=# SELECT name, price FROM products WHERE price BETWEEN 22.50 AND 99.99;
--  name  | price 
-- -------+-------
--  chair |    44
--  stool | 25.99
-- (2 rows)

--11There’s a sale going on: Everything is $20 off! Update the database accordingly.

-- products_db=# UPDATE products SET price = price - 20.00;
-- UPDATE 4
-- products_db=# SELECT name, price FROM products;
--  name  |       price       
-- -------+-------------------
--  chair |                24
--  stool | 5.989999999999998
--  table |               104
--  ring  | 1.120000000000001
-- (4 rows)

--12Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.

-- products_db=# DELETE FROM products WHERE price< '20.00';
-- DELETE 2
-- products_db=# SELECT name, price FROM products;
--  name  | price 
-- -------+-------
--  chair |    24
--  table |   104
-- (2 rows)

--13And now the sale is over. For the remaining products, increase their price by $20.

-- products_db=# UPDATE products SET price = price + 20.00;
-- UPDATE 2

--14There is a new company policy: everything is returnable. Update the database accordingly.

-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('ring', '21.12', 'true');
-- INSERT 0 1
-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('stool', '25.99', 'true');
-- INSERT 0 1
-- products_db=# SELECT name, price FROM products;
--  name  | price 
-- -------+-------
--  chair |    44
--  table |   124
--  ring  | 21.12
--  stool | 25.99
-- (4 rows)
