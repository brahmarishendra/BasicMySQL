CREATE TABLE Man (
    MenID INT(05) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Occupation VARCHAR(100)
);

INSERT INTO man (MenID, Name, Age, Occupation)
VALUES
    (1, 'John Doe', 30, 'Software Engineer'),
    (2, 'BoB', 30, 'Software Engineer'),
    (3, 'Lahari', 30, 'Software Engineer'),
    (4, 'sasi', 30, 'Software Engineer');

select * from Man;

  select distinct age from Man;
	  select count(*) AS MenID (Select  Distnct age from Man);