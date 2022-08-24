-- ������� �������� � MS SQL

-- ����� ���������� � ������������ ���������� ������
SELECT MAX(Salary) FROM Employee

-- ����� ������ � ����� ������� ���������� ������ ����� ������������
SELECT DepartmentName FROM Employee
LEFT JOIN Department 
ON Department.Id = Employee.Department_Id
WHERE Salary = (SELECT MAX(Salary) FROM Employee)

-- ����� ������ � ������������ ��������� ��������� �����������
SELECT TOP 1 DepartmentName FROM Employee
LEFT JOIN Department 
ON Department.Id = Employee.Department_Id
GROUP BY DepartmentName
ORDER BY SUM(Salary) DESC

-- ����� ����������, ��� ��� ���������� �� "�" � ������������� �� "�".
SELECT Employee_Name FROM Employee
WHERE Employee_Name LIKE '�%�'


