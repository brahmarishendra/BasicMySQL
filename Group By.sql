select Lastname , PersonID,Salary
From Men
Where exists (select LastName from person 
Where Man.MenID = Person.PersonID and Salary > 20000);