create database employee_payroll_service
use employee_payroll_service

<<<<<<< HEAD
create table employee_payroll_service
=======
create table employee_payroll
>>>>>>> UC2_CreateTable
(
 id int identity(1,1) primary key,
 name varchar(100) not null,
 salary money not null,
 start date not null
);

select * from employee_payroll

insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')

select * from employee_payroll;

select salary from employee_payroll where name = 'billi'

select * from employee_payroll
where start between cast('2019-11-13' As datetime) and GETDATE();

ALTER TABLE employee_payroll
ADD Gender char(2)