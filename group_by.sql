-- Find the sum of totals in the invoice table grouped by billing_state
SELECT billing_state, SUM(total) AS total_sum
FROM invoice
GROUP BY billing_state;

-- Find the average track length (in milliseconds) by album. Order the table by the averages.
SELECT album_id, AVG(milliseconds) AS average_length
FROM track
GROUP BY album_id
ORDER BY average_length;

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
SELECT artist_id, COUNT(album_id) AS album_count
FROM album
WHERE artist_id IN (8, 22)
GROUP BY artist_id;
/*
Functions used in this file:
1. SUM(total): Calculates the sum of the 'total' column in the 'invoice' table.
2. AVG(milliseconds): Calculates the average value of the 'milliseconds' column in the 'track' table.
3. COUNT(album_id): Counts the number of occurrences of 'album_id' in the 'album' table.
4. GROUP BY: Groups the result set by one or more columns.
5. ORDER BY: Sorts the result set based on one or more columns in ascending or descending order.
6. WHERE/IN: Filters the result set based on a specified list of values.
*/
