-- creating database --
create database school_management;
use school_management;


-- creating tables --
create table students(
	student_id int,
    first_name varchar(30),
    last_name varchar(30),
    email varchar(50),
    phone_number varchar(10),
    date_of_birth date
);

create table courses(
	course_id int,
    course_name varchar(50),
    course_description varchar(50),
    credits int
);

-- modifying tables
alter table students add column grade varchar(2);
alter table students modify column phone_number varchar(15);

-- inserting values --
insert into students 
(student_id, first_name, last_name, email, phone_number, date_of_birth)
values 
(1, "pratik", "bhad", "pratik@abc.com", "1234567890", "10-10-01"),
(2, "abhishek", "kamble", "pratik@abc.com", "1234567890", "10-10-01"),
(3, "ujjwal", "mule", "pratik@abc.com", "1234567890", "10-10-01");

insert into courses 
(course_id, course_name, course_description, credits)
values 
(1, "cse", "computer science and engineering", 4),
(2, "it", "information technology", 4),
(3, "ece", "electronics and communication engineering", 4),
(4, "ele", "electrical", 4),
(5, "civil", "civil engineering", 4);

-- query data --
select first_name, last_name, email from students;

-- drop objects --
drop table students;
drop database school_management;