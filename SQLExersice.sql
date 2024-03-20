-- find all products
SELECT * FROM prodcuts;
-- find all products that cost $1400
SELECT * FROM products
Where Price = $1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM products
where Price = 11.99 OR 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
Where NOT Price = 11.99
order by Price asc;

-- find all products and sort them by price from greatest to least
SELECT * FROM products
order by Price desc;

-- find all employees who don't have a middle initial
SELECT * FROM employees
Where MiddleInitial is null;

-- find distinct product prices
SELECT distinct Price, Name FROM products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
Where FirstName Like "j%";

-- find all Macbooks
SELECT Name, Price From products
Where Name Like "mac%";

-- find all products that are on sale
SELECT Name, Price FROM products
Where Onsale = true;

-- find the average price of all products
SELECT AVG(Price) As "average price" FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * From employees
WHERE Title Like "%geek"
And middleinitial is null;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * From products
Where StockLevel between 500 and 1200
Order by Price ASC;
