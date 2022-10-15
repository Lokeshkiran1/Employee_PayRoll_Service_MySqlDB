create database Dog;
use Dog;
create table dog
(
	id int,
	name varchar(200),
	amount float,
	purchasingDate date
);
insert into dog (id,name,amount,purchasingDate)values(12,'pummi',10000.45,'2022-04-25'),
(23,'dabar',15000,'2022-07-12'),
(45,'pinki',25000,'2022-05-22');

update dog set amount=1500.25 where id=23;

alter table dog Add borrowDate date NOT NULL AFTER name;

select * from dog;