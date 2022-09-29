--1--
SELECT MfName FROM MANUFACTURER 
WHERE State = 'South Dakota'

--2--
SELECT AVG(Weight) FROM COMPUTER
WHERE EmployeeID IS NOT NULL 

--3--
SELECT EmpName FROM EMPLOYEE
WHERE Phone LIKE '2%'

--4--
SELECT SerialNumber FROM COMPUTER
WHERE Weight < AVG(Weight)

--5--
SELECT DISTINCT MfName FROM COMPUTER
	WHERE EmployeeID IN (SELECT EmployeeId FROM COMPUTER WHERE EmployeeID IS NULL)

--6--
SELECT e.EMpName , c.SerialNumber , m.City 
FROM EMPLOYEE e JOIN COMPUTER c
ON e.EmployeeID = c.EmployeeId
INNER JOIN MANUFACTURER m
ON m.MfName = c.MfName

--7--

