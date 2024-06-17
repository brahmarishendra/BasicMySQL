CREATE TABLE Person (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    Salary int,
    City varchar(255)
);
insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('01','Brahma','Rishendra','LIMDA',20000,'Vadodara');

insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('02','Brahma','Rishendra','LIMDA',20000,'Vadodara');

insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('03','sharath','chandra','prakesh nagar',20000,'narasaraopet');

insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('04','Pokuri','Sirisha','prakesh nagar',30000,'narasaraopet');

insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('05','Viswa','Sida','prakesh nagar',50000,'Guntur');

insert into person(PersonID,LastName,FirstName,Address,Salary,City) Values
('06','k','kavya','60pt road',80000,'narasaraopet');

select * from person;
select * from person where salary >1000;
	select * from person ORDER BY Salary > 30000;
    
SELECT * from person Where city = 'vadodara' AND LastName = 'brahma';
	select * from person where  City = 'Narasaraopet'  and 
    (LastName like 'P%' or Lastname like 'S%');

select * from person where City = 'Narasaraopet' or City = 'Guntur' or 
Salary > 20000;

select * from person where  not city = 'Vadodara';

select PersonID , city , lastname From person Where Address IS NULL;

	select PersonID , city , lastname From person Where City IS Not NULL;
    
select * from person;
UPDATE person SET City = 'tokyo' WHERE PersonID = 4;
UPDATE `sys`.`person`
SET
`PersonID` = <{PersonID: }>,
`LastName` = <{LastName: }>,
`FirstName` = <{FirstName: }>,
`Address` = <{Address: }>,
`Salary` = <{Salary: }>,
`City` = <{City: }>
WHERE ;

select * from person limit 3;

	Select Max(salary) as highincome From person;

select min(Salary) as Lowestincome from person;
	
		select avg(salary) from person;
	select count(lastname) from person;

delete from person where PersonID = 6;

select * from person where city in ('vadodara','tokyo','guntur');
	
    select * from person where  salary between 20000 and 50000;
select * from person where  salary not between 20000 and 50000;

select *
from person
 where city != 'vadodara'
 --or operator
 select * from person where personID = '03' OR Salary < 40000
 select * from person where personID = '02' OR (Salary > 10000
 AND City = 'vadodara')
 --and & --between
Select * from person 
WHERE Salary BETWEEN 10000 AND 50000
--Like Operator
SELECT * FROM person WHERE Lastname LIKE 'p%'
--Regexp Operator
Select * from person 
where Lastname REGEXP 'prasana$|Brahma'
--2
SELECT * from person where Lastname REGEXP 's[a-b]'
--isnull Operator
SELECT * from person where Lastname IS not NULL 

SELECT * FROM person ORDER BY PersonID DESC LIMIT 4;

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

Select OrderID , Lastname from Orders
 JOIN person 
 ON Orders.CustomerID = person.PersonID;
 
