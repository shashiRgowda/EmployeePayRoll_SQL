use payroll_service16

select * from sys.databases

use payroll_service16

create table employee_payroll1
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,
start date not null,
);

select * from employee_payroll1

insert into employee_payroll1 values
(
'shashi',200000,'2020-07-02'),
('sharath',300000,'2020-06-04'),
('naveen',500000,'2019-04-06'),
('shreya',400000,'2018-02-04'),
('ankitha',600000,'2018-07-08');

select salary from employee_payroll1 where name='shashi'

select getdate() 'Today Date';

select * from employee_payroll1 where start between '2018-07-08' and '2021-05-03'






select getdate() 'Today Date';

select * from employee_payroll1 where start between '2018-01-01' and getdate()

alter table employee_payroll1 add
gender char(1);

select * from employee_payroll1 

update employee_payroll1 set gender ='F' where name = 'ankitha' or name = 'shreya'
update employee_payroll1 set gender ='M' where id in('1','2','3')

select sum(salary)as 'total salary', gender from employee_payroll1 group by gender;
select min(salary)as 'total salary', gender from employee_payroll1 group by gender;
select max(salary)as 'total salary', gender from employee_payroll1 group by gender;
select avg(salary)as 'total salary', gender from employee_payroll1 group by gender;



