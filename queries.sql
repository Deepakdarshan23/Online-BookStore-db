-- 1. List all books with author names
SELECT b.Title, a.AuthorName 
FROM Books b 
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- 2. Find total revenue per book
SELECT b.Title, SUM(od.Quantity * b.Price) AS Revenue
FROM OrderDetails od
JOIN Books b ON od.BookID = b.BookID
GROUP BY b.Title;

-- 3. Get average rating per book
SELECT b.Title, AVG(r.Rating) AS AvgRating
FROM Reviews r
JOIN Books b ON r.BookID = b.BookID
GROUP BY b.Title;

-- 4. List customers who ordered more than 1 book
SELECT c.Name, COUNT(od.BookID) AS TotalBooks
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.Name
HAVING COUNT(od.BookID) > 1;