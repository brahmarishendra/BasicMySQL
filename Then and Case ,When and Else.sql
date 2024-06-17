# then and when Operator

SELECT PersonID, Salary,
CASE 
    WHEN Salary > 30000 AND Salary < 80000 THEN 'You are Elgigble'
    WHEN Salary < 80000 THEN 'Lowest Salary'
    When Salary = 1000000 THEN ' Too High'
    ELSE 'Under 20000 you are not eligible for Business Loan'
END AS SalaryEligibility
FROM person;
