CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    Salary INT,
    City VARCHAR(255)
);

INSERT INTO Person (PersonID, LastName, FirstName, Address, Salary, City)
VALUES
    (1, 'Brahma', 'Rishendra', 'LIMDA', 20000, 'Vadodara'),
    (2, 'Brahma', 'Rishendra', 'LIMDA', 20000, 'Vadodara'),
    (3, 'sharath', 'chandra', 'prakesh nagar', 20000, 'narasaraopet'),
    (4, 'Pokuri', 'Sirisha', 'prakesh nagar', 30000, 'narasaraopet'),
    (5, 'Viswa', 'Sida', 'prakesh nagar', 50000, 'Guntur'),
    (6, 'k', 'kavya', '60pt road', 80000, 'narasaraopet');

SELECT * FROM Person WHERE Salary > 1000;

SELECT *
FROM Person
WHERE City != 'Vadodara';

SELECT * FROM Person WHERE PersonID = '03' OR Salary < 40000;

SELECT * FROM Person WHERE PersonID = '02' OR (Salary > 10000 AND City = 'Vadodara');

SELECT * FROM Person WHERE Salary BETWEEN 10000 AND 50000;

SELECT * FROM Person WHERE LastName LIKE 'p%';

SELECT * FROM Person WHERE LastName REGEXP 'prasana$|Brahma';

SELECT * FROM Person WHERE LastName REGEXP 's[a-b]';

SELECT * FROM Person WHERE LastName IS NOT NULL;

-- Create the Order table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data into the Order table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 101, '2024-06-02', 150.50),
    (2, 102, '2024-06-02', 75.20),
    (3, 103, '2024-06-01', 200.00),
    (4, 104, '2024-06-01', 50.75);

-- Join query
SELECT Orders.OrderID, Person.LastName
FROM Orders
JOIN Person ON Orders.CustomerID = Person.PersonID;

-- Create the Man table
CREATE TABLE Man (
    MenID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Occupation VARCHAR(100)
);

-- Insert sample data into the Man table
INSERT INTO Man (MenID, Name, Age, Occupation)
VALUES
    (1, 'John Doe', 30, 'Software Engineer'),
    (2, 'BoB', 30, 'Software Engineer'),
    (3, 'Lahari', 30, 'Software Engineer'),
    (4, 'sasi', 30, 'Software Engineer');

-- Join query between Person and Man
SELECT P.PersonID, P.LastName, M.MenID
FROM Person P
JOIN Man M ON P.PersonID = M.MenID
ORDER BY P.PersonID;
