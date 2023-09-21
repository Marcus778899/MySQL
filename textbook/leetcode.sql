show databases;
create database leetcode;
use leetcode;
show tables;

-- 175. Combine Two Tables
	-- sql schema
Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255));
Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255));
Truncate table Person;
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen');
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob');
Truncate table Address;
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California');


 	-- Answer

select firstName,lastName,city,state from Person left join Address on  Person.personId = Address.personId;


-- 176. Second Highest Salary
	-- sql schema
Create table If Not Exists Employee (id int, salary int);
Truncate table Employee;
insert into Employee (id, salary) values ('1', '100');
insert into Employee (id, salary) values ('2', '200');
insert into Employee (id, salary) values ('3', '300');
delete from Employee where id in ('2','3');

	-- Answer
SELECT MAX(e1.salary) AS SecondHighestSalary
FROM employee AS e1
WHERE e1.salary < (SELECT MAX(salary) FROM employee);


-- 177. Nth Highest Salary
	-- sql schema
drop table Employee ;
Create table If Not Exists Employee (Id int primary key, Salary int);
Truncate table Employee;
insert into Employee (id, salary) values ('1', '100');
insert into Employee (id, salary) values ('2', '200');
insert into Employee (id, salary) values ('3', '300');

	-- Answer







-- 