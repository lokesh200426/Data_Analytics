select * 
from employee_demographics;

select first_name, last_name
from employee_demographics
union
select salary, occupation 
from employee_salary
;

select first_name, last_name ,"old"as age
from employee_demographics
where age > 45
union 
select first_name, last_name, "high paid" as salary
from employee_salary
where salary > 70000
;

select first_name, last_name ,"old man"as age
from employee_demographics
where age > 40 and gender = " male"
union 
select first_name, last_name, "old lady" as age
from employee_demographics
where age > 40 and gender = "female"
union
select first_name, last_name, "high paid" as salary
from employee_salary
where salary > 70000

;



select first_name, last_name ,"old man"as age
from employee_demographics
where age > 40 and gender = " male"
union 
select first_name, last_name, "old lady" as age
from employee_demographics
where age > 40 and gender = "female"
union
select first_name, last_name, "high paid" as salary
from employee_salary
where salary > 70000
order  by first_name, last_name
;


