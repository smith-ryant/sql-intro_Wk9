-- Create a table named 'orders' with the following columns:
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY, -- Unique identifier for each order
  person_id INT, -- ID of the person placing the order
  product_name VARCHAR(255), -- Name of the product
  product_price DECIMAL(10, 2), -- Price of the product
  quantity INT -- Quantity of the product ordered
);

-- Insert some sample data into the 'orders' table:
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES
(1, 'Product A', 10.00, 2), -- Person 1 ordered 2 units of Product A
(2, 'Product B', 20.00, 3), -- Person 2 ordered 3 units of Product B
(1, 'Product C', 30.00, 1), -- Person 1 ordered 1 unit of Product C
(2, 'Product D', 40.00, 1), -- Person 2 ordered 1 unit of Product D
(1, 'Product E', 50.00, 2); -- Person 1 ordered 2 units of Product E

-- Retrieve all rows from the 'orders' table:
SELECT * FROM orders;

-- Calculate the total quantity of products ordered:
SELECT SUM(quantity) AS total_products_ordered FROM orders;

-- Calculate the total price of all orders:
SELECT SUM(product_price * quantity) AS total_order_price FROM orders;

-- Calculate the total order price for each person:
SELECT person_id, SUM(product_price * quantity) AS total_order_price
FROM orders
GROUP BY person_id;