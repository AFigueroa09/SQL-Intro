-- find all products
SELECT * from bestbuy.products;

-- find all products that cost $1400
SELECT * from bestbuy.products
WHERE price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT * from bestbuy.products
WHERE price = 11.99 OR price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * from bestbuy.products
WHERE NOT price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * from bestbuy.products
ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT * from bestbuy.employees
WHERE MiddleInitial IS NULL;

-- find distinct product prices
SELECT DISTINCT price from bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * from bestbuy.employees
WHERE FirstName LIKE "j%";

-- find all Macbooks
SELECT * from bestbuy.products
WHERE bestbuy.products.Name LIKE "%Macbook%";

-- find all products that are on sale
SELECT * from bestbuy.products
WHERE OnSale = 1;

-- find the average price of all products
SELECT AVG(Price) from bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * from bestbuy.employees
WHERE MiddleInitial IS NULL AND Title = "Geek Squad";

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * from bestbuy.products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price DESC;