Select person.PersonID , person.Salary,person.LastName
From person
inner join	Man ON person.PersonID = Man.MenID
inner Join goldcust ON goldcust.name = Man.Name;

	Select person.PersonID,Man.MenID,person.LastName
    from person 
    left join Man ON person.PersonID = Man.MenID 
    order by person.LastName;
    
Select person.PersonID,Man.MenID,person.LastName
    from person 
    right join Man ON person.PersonID = Man.MenID 
    order by person.LastName;

select person.LastName , Man.MenID
from Man
cross join person where person.PersonID = Man.MenID;

	Select P.personID AS ID , N.Lastname As name ,C.city
    from person p , Man N
    Where p.PersonID <> N.MenID
	and C.city=N.city 
    order by C.city;
    
SELECT person.PersonID,Count(Man.MenID) AS NumberofOrders,
person.LastName 
FROM Man
INNER JOIN Person ON Man.MenID = Person.personID
GROUP BY person.PersonID , Man.MenID,person.LastName
HAVING COUNT(person.PersonID);

Select count(person.PersonID) , City
from person
group by city
having count(PersonID) ;

SELECT LastName, PersonID * (PersonID + 
IFNULL(Salary, 0))
FROM person;

SELECT LastName, PersonID * (PersonID + 
coalesce(Salary, 0))
FROM person;