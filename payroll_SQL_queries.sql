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

update employee_payroll set Gender = 'M' where name = 'Billi' or name = 'Charlie';
update employee_payroll set Gender = 'F' where name = 'Terisa';

select sum(salary) from employee_payroll where gender='M' group by Gender;
select sum(salary) from employee_payroll  group by Gender;
select sum(salary) as 'totalSalary',gender from employee_payroll group by Gender;
select avg(salary) as 'averageSalary',gender from employee_payroll group by Gender;
select min(salary) as 'minimumSalary',gender from employee_payroll group by Gender;
select max(salary) as 'maximumSalary',gender from employee_payroll group by Gender;
select count(Gender) as 'male' from employee_payroll where gender='M' 
select count(Gender) as 'female' from employee_payroll where gender='F'

select * from employee_payroll
alter table employee_payroll add
phone varchar(13),
department varchar(100) not null default 'Mca',
address varchar(250) not null default 'Banglore'

select * from employee_payroll
sp_rename 'employee_payroll.salary' , 'basic_pay'
alter table employee_payroll add
deduction real ,
taxable_pay money,
income_tax money,
net_pay float;

insert into employee_payroll values
('Terisa',700000.0,'2020-08-14','F','8734586245','sales','india',100.0,12000.0,2000.0,1233.0)

update employee_payroll set taxable_pay=12000.00, department='marketing',income_tax=2000.00, net_pay=1233 where id=2;
select * from employee_payroll where name='Terisa'

create table Employee
(
emp_id int identity primary key,
name varchar(50),
startdate date,
gender char(1),
phone varchar(13),
address varchar(50),
);
select * from Employee
create table Department
(
dept_id int identity primary key,
rooms int,
emp_id int FOREIGN KEY REFERENCES employee(emp_id)
);
select * from Department

create table Payroll
(
emp_id int FOREIGN KEY REFERENCES employee(emp_id),
basicpay money,
deduction money,
taxable_pay money,
income_tax money,
net_pay money,
);

select * from Payroll

create table Company
(
emp_id int foreign key references employee(emp_id),
company_name varchar(50),
);

create table Employee_Department
(
emp_id int foreign key references employee(emp_id),
dept_id int foreign key references Department(dept_id),
);

use payroll_service
SELECT  p.basicpay, e.name FROM Payroll p inner join Employee e on p.emp_id=e.emp_id where e.name='Billi';


select sum(p.basicpay) as "sum",e.gender from payroll p inner join Employee e on p.emp_id=e.emp_id  group by gender ;
select max(p.basicpay) as "maxSalary",e.gender from payroll p inner join Employee e on p.emp_id=e.emp_id  group by gender ;
select min(p.basicpay) as "minSalary",e.gender from payroll p inner join Employee e on p.emp_id=e.emp_id  group by gender ;
select avg(p.basicpay) as "averageSalry",e.gender from payroll p inner join Employee e on p.emp_id=e.emp_id  group by gender ;
select count(p.basicpay) as "count",e.gender from payroll p inner join Employee e on p.emp_id=e.emp_id  group by gender ;



SELECT e.name,e.startdate,e.gender,e.phone,e.address,c.company_name,s.basicpay FROM Employee as e  inner join Company AS c  ON e.emp_id=c.emp_id
inner join Payroll AS s on e.emp_id=s.emp_id inner join  Department as d on d.dept_id=e.emp_id inner join Employee_Department as ed on ed.dept_id=d.dept_id