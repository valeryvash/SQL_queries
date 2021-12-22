create table if not exists Customers (
                                         Id int,
                                         Name varchar(255)
    );

create table if not exists Orders(
                                     id int,
                                     CustomerId int
);

Truncate table Customers;
insert into Customers(id, name)
VALUES ('1', 'Joe');
insert into Customers(id, name)
VALUES ('2', 'Henry');
insert into Customers(id, name)
VALUES ('3', 'Sam');
insert into Customers(id, name)
VALUES ('4', 'Max');

Truncate table Orders;
insert into Orders(id, CustomerId) values ('1','3');
insert into Orders(id, CustomerId) values ('2','1');

-- solution task #5
select c.name as Customer
from Customers as c
         left outer join Orders as o
                         on c.Id = o.CustomerId
where o.CustomerId is null;

