-- solution task #3
select employee.name
from employee inner join employee manager on employee.managerid = manager.id
where employee.salary > manager.salary