Create table If Not Exists Employee (Id int, Salary int);
Truncate table Employee;
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');

-- solution task #2
select max(salary) as SecondMaxSalary from employee
where salary < (select max(salary)
                from  employee)
