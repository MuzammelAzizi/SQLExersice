use bestbuy;
-- find all products
SELECT * FROM bestbuy.prodcuts;
-- find all products that cost $1400
SELECT * FROM bestbuy.products
Where Price = $1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM products
where Price = 11.99 OR 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products
Where NOT Price = 11.99
order by Price asc;

-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products
order by Price desc;

-- find all employees who don't have a middle initial
SELECT * FROM bestbuy.employees
Where MiddleInitial is null;

-- find distinct product prices
SELECT distinct Price, Name FROM bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM bestbuy.employees
Where FirstName Like "j%";

-- find all Macbooks
SELECT Name, Price From bestbuy.products
Where Name Like "mac%";

-- find all products that are on sale
SELECT Name, Price FROM bestbuy.products
Where Onsale = true;

-- find the average price of all products
SELECT AVG(Price) As "average price" FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees
WHERE Title LIKE "%geek%"
AND MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * From bestbuy.products
Where StockLevel between 500 and 1200
Order by Price ASC;
