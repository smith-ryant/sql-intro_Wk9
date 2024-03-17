-- Find all customers with fax numbers and set those numbers to null
UPDATE customer SET Fax = NULL WHERE Fax IS NOT NULL;

-- Find all customers with no company (null) and set their company to “Self”
UPDATE customer SET Company = 'Self' WHERE Company IS NULL;

-- Find the customer Julia Barnett and change her last name to Thompson
UPDATE customer SET LastName = 'Thompson' WHERE FirstName = 'Julia' AND LastName = 'Barnett';

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4
UPDATE customer SET SupportRepId = 4 WHERE Email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”
UPDATE track SET Composer = 'The darkness around us' WHERE GenreId = (SELECT GenreId FROM genre WHERE Name = 'Metal') AND Composer IS NULL;