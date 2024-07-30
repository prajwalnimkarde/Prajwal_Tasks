create database dbDemo;
use dbDemo;

create table Employees(
	EmployeeId int primary key,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Email varchar(100) not null,
    Salary int not null,
    Department varchar(50)
);


insert into Employees 
(EmployeeId, FirstName, LastName, Email, Salary, Department)
values
(1,"John","Doe","john.doe@company.com", 60000, "Marketing"),
(2,"Jane","Smith","jane.smith@company.com", 75000, "Sales"),
(3,"Michael","Johnson","michael.johnson@company.com", 85000, "Marketing"),
(4,"Emily","Williams","emily.williams@company.com", 72000, "IT"),
(5,"David","Brown","david.brown@company.com", 65000, "Sales"),
(6,"Sarah","Davis","sarah.davis@company.com", 90000, "IT"),
(7,"Robert","Miller","robert.miller@company.com", 70000, "Finance"),
(8,"Jessica","Wilson","jessica.wilson@company.com", 65000, "Finance"),
(9,"Daniel","Anderson","daniel.anderson@company.com", 72000, "IT"),
(10,"Ashley","Taylor","ashley.taylor@company.com", 58000, "Sales"),
(11,"William","Brown","william.brown@company.com", 78000, "Marketing"),
(12,"Sophia","Davis","sophia.davis@company.com", 62000, "HR");
