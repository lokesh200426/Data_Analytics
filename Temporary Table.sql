#TEMPORARY TABLE

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
class varchar(50)
)

select * 
from temp_table;

insert into temp_table
values('Lokesh', "S", "ECE-A"),
("Balaji", "E", "ECE-A"),
("Juliet", "J", "ECE-A");

select * 
from temp_table;

#Creating temp table for already existing table

create temporary table birth_date_1985
select* 
from employee_demographics
where birth_date > "1985-01-01";

select *
FROM birth_date_1985;


















