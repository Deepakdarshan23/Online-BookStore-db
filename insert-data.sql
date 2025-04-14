INSERT INTO Authors VALUES (1, 'J.K. Rowling'), (2, 'George Orwell');

INSERT INTO Books VALUES 
(101, 'Harry Potter', 1, 19.99, 'Fantasy'),
(102, '1984', 2, 14.99, 'Dystopian');

INSERT INTO Customers VALUES 
(201, 'Alice', 'alice@example.com'),
(202, 'Bob', 'bob@example.com');

INSERT INTO Orders VALUES 
(301, 201, '2023-09-12', 34.98),
(302, 202, '2023-10-02', 14.99);

INSERT INTO OrderDetails VALUES 
(301, 101, 1), 
(301, 102, 1),
(302, 102, 1);

INSERT INTO Reviews VALUES 
(401, 101, 201, 5, 'Loved the magic!'),
(402, 102, 202, 4, 'Thought-provoking.');