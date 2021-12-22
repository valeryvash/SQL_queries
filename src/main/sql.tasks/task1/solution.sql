create table if not exists Address(
                                      AddressId int,
                                      PersonId int,
                                      City varchar(255),
    State varchar(255)
    );

truncate table Person;
insert into Person (PersonId, FirstName, LastName)
values ('1','Wang', 'Allen');

truncate table Address;
insert into Address (AddressId, PersonId, City, State)
values ('1', '2', 'New York City', 'New York');

-- solution task #1
select FirstName, LastName, State
from Person p left outer join Address a
                              on p.PersonId = a.personid;