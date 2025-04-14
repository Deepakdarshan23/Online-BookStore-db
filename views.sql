CREATE VIEW TopRatedBooks AS
SELECT b.Title, AVG(r.Rating) AS AvgRating
FROM Books b
JOIN Reviews r ON b.BookID = r.BookID
GROUP BY b.Title
HAVING AVG(r.Rating) >= 4.5;