DROP TABLE IF EXISTS dbo.Employee;
DROP TABLE IF EXISTS dbo.Department;

CREATE TABLE dbo.Department
(
DepartmentId INT IDENTITY PRIMARY KEY,
DepartmentName VARCHAR(255) NOT NULL,
DepartmentDescription VARCHAR(255)
);

CREATE TABLE dbo.Employee
(
EmployeeId INT IDENTITY PRIMARY KEY,
DepartmentId INT FOREIGN KEY REFERENCES dbo.Department(DepartmentId),
EmployeeName VARCHAR(255) NOT NULL,
EmpAddress VARCHAR(255),
Email VARCHAR(255),
Telephone VARCHAR(255),
StartYear INT,
Qualification VARCHAR(255),
Experience VARCHAR(255)
);

SET IDENTITY_INSERT dbo.Department ON;
insert into dbo.Department (DepartmentId,DepartmentName,DepartmentDescription) values ( 1,'Investments', 'Shares, Dividends, Bonds');
insert into dbo.Department (DepartmentId,DepartmentName,DepartmentDescription) values ( 2,'Loans', 'Mortgage, Car and Cash Loans');
insert into dbo.Department (DepartmentId,DepartmentName,DepartmentDescription) values ( 3,'Human Resources', 'HR employees');
insert into dbo.Department (DepartmentId,DepartmentName,DepartmentDescription) values ( 4,'IT Services', 'R&D, Database and IT Services');
insert into dbo.Department (DepartmentId,DepartmentName,DepartmentDescription) values ( 5,'IT Support', 'Hardware and Software support');
SET IDENTITY_INSERT dbo.Department OFF;

SET IDENTITY_INSERT dbo.Employee ON;
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 1,4,'David Wright','Test1','test@test.com','0283922121',2010,'Degree in Business Studies','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 2,4,'John Smith','Test2','test1@test.com','074384728',2009,'Degree in Computer Science','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 3,2,'Steve Martin','Test3','test2@test.com','0743824728',2015,'Degree in Business Studies','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 4,2,'John Henry','Test4','test3@test.com','0738217382',2014,'Degree in Computer Science','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 5,3,'Colin Jones','Test5','test4@test.com','08493284932',2014,'Degree in Business Studies','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 6,3,'Enda Lee','Test6','test5@test.com','0372184132783',2013,'Degree in Computer Science','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 7,5,'Claire Alan','Test7','test6@test.com','08432789422',2017,'Degree in Business Studies','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 8,1,'Jane Doe','Test8','test7@test.com','0378472894',2018,'Degree in Computer Science','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 9,1,'Jean Wright','Test9','test8@test.com','078327489132',2011,'Degree in Business Studies','All rounder');
insert into dbo.Employee (EmployeeId,DepartmentId,EmployeeName,EmpAddress,Email,Telephone,StartYear,Qualification,Experience) values ( 10,4,'Helen Stimpson','Test10','test9@test.com','037824798132',2012,'Degree in Arts','All rounder');
SET IDENTITY_INSERT dbo.Employee OFF;