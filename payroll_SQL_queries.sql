create database employee_payroll_service
use employee_payroll_service

create table employee_payroll_service
(
 id int identity(1,1) primary key,
 name varchar(100) not null,
 salary money not null,
 start date not null
);