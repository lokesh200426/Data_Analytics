select * 
from employee_demographics;


select *
from employee_salary;


select length(first_name)
from employee_demographics;


select first_name, length(first_name)
from employee_demographics
order by length(first_name)
;

select first_name, upper(first_name)
from employee_demographics;

select last_name, lower(last_name)
from employee_demographics;

select ltrim(         "sql"            )
;


select rtrim(         "sql"            )
;


select trim(         "sql"            )
;

#substing

select first_name,substring(first_name, 2, 4)
from employee_demographics;


#replace

select first_name, replace(first_name, "a", "l")
from employee_demographics;

#CONCATENATION
select first_name, last_name, concat(first_name," " ,last_name) as fullname
from employee_demographics;

#LOCATE
select first_name, locate("a", first_name)
from employee_demographics;