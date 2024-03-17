-- Count how many orders were made from the USA
SELECT COUNT(*) FROM invoice WHERE country = 'USA';

-- Find the largest order total amount
SELECT MAX(total_amount) FROM invoice;

-- Find the smallest order total amount
SELECT MIN(total_amount) FROM invoice;

-- Find all orders bigger than $5
SELECT * FROM invoice WHERE total_amount > 5;

-- Count how many orders were smaller than $5
SELECT COUNT(*) FROM invoice WHERE total_amount < 5;

-- Count how many orders were in CA, TX, or AZ (use IN)
SELECT COUNT(*) FROM invoice WHERE state IN ('CA', 'TX', 'AZ');

-- Get the average total of the orders
SELECT AVG(total_amount) FROM invoice;

-- Get the total sum of the orders
SELECT SUM(total_amount) FROM invoice;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24
UPDATE invoice SET total_amount = 24 WHERE invoice_id = 5;

-- Delete the invoice with an invoice_id of 1
DELETE FROM invoice WHERE invoice_id = 1;
/*
Functions used in this file:
1. COUNT(*): Returns the number of rows that match the specified condition.
2. MAX(): Returns the maximum value from a column.
3. MIN(): Returns the minimum value from a column.
4. AVG(): Returns the average value from a column.
5. SUM(): Returns the sum of values from a column.
6. UPDATE: Modifies the data in a table.
7. DELETE: Deletes rows from a table.
*/
