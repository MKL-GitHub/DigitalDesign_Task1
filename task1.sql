-- Задание выполнил в MS SQL

-- Вывод сотрудника с максимальной заработной платой
SELECT MAX(Salary) FROM Employee

-- Вывод отдела с самой высокой заработной платой между сотрудниками
SELECT DepartmentName FROM Employee
LEFT JOIN Department 
ON Department.Id = Employee.Department_Id
WHERE Salary = (SELECT MAX(Salary) FROM Employee)

-- Вывод отдела с максимальной суммарной зарплатой сотрудников
SELECT TOP 1 DepartmentName FROM Employee
LEFT JOIN Department 
ON Department.Id = Employee.Department_Id
GROUP BY DepartmentName
ORDER BY SUM(Salary) DESC

-- Вывод сотрудника, чье имя начинается на "Р" и заканчивается на "н".
SELECT Employee_Name FROM Employee
WHERE Employee_Name LIKE 'Р%н'


