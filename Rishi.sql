SELECT * FROM rishi.goldcud;
CREATE TABLE Gold (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Cus_date DATE,
    Cost NUMERIC(10, 2),
    Type VARCHAR(50)
);

INSERT INTO Gold (ID, Name, Cus_date, Cost, Type)
VALUES
    (1, 'Brahma rishi', '2024-06-02', 3000, 'silver'),
    (2, 'Pokuri Prasanna', '2024-06-02', 8000, 'Gold'),
    (3, 'Kavya', '2024-06-02', 2000, 'Silver'),
    (4, 'Sasi', '2024-06-02', 6000, 'Gold');


SELECT * FROM Gold;
