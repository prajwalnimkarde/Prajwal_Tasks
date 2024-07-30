create database tasks;
use tasks;
drop database tasks;


-- Employees Table --
create table Employees(
	EmployeeId int primary key,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Email varchar(100) not null,
    Salary int not null,
    DepartmentId int
);


insert into Employees 
(EmployeeId, FirstName, LastName, Email, Salary, DepartmentId)
values
(1,"John","Doe","john.doe@company.com", 60000, 1),
(2,"Jane","Smith","jane.smith@company.com", 75000, 2),
(3,"Michael","Johnson","michael.johnson@company.com", 85000, 1),
(4,"Emily","Williams","emily.williams@company.com", 72000, 3),
(5,"David","Brown","david.brown@company.com", 65000, 2),
(6,"Sarah","Davis","sarah.davis@company.com", 90000, 3);


-- Departments Table --
create table Departments(
	DepartmentId int,
    DepartmentName varchar(50) not null
);


insert into Departments
(DepartmentId, DepartmentName)
values
(1, "Marketing"),
(2, "Sales"),
(3, "IT"),
(4, "Finance"),
(5, "HR");


-- Projects Table --
create table Projects(
	ProjectId int primary key,
    ProjectName varchar(100) not null,
    DepartmentId int
);


insert into Projects
(ProjectId, ProjectName, DepartmentId)
values
(1, "Project A", 1),
(2, "Project B", 2),
(3, "Project C", 3),
(4, "Project D", 4),
(5, "Project E", 5);


/* ====== Practice Questions ===== */
-- 1st question --
alter table Employees add constraint check(salary > 0);


-- 2nd question --
alter table Employees
add constraint
foreign key (DepartmentId) 
references Departments(DepartmentId);


-- 3rd question --
alter table Employees
add constraint
unique(Email);


-- 4th question --
alter table Departments
add constraint 
primary key(DepartmentId);


-- 5th question --
alter table Projects
add constraint
foreign key(DepartmentId) references Departments(DepartmentId);


-- 6th question --
insert into Employees 
values
(7,"Chandler","Bing","chandler.bing@company.com", 68000, 7);


-- 7th question --
insert into Employees 
values
(7,"Chandler","Bing","john.doe@company.com", 68000, 4);


-- 8th question --
delete from Departments where DepartmentId = 2;


-- 9th question --
update Employees set DepartmentId=7 where EmployeeId=2;
