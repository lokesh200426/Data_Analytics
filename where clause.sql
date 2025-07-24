select *
from employee_salary
where first_name = "Tom";


select employee_id,
salary,
first_name
from employee_salary
where salary >= 50000;


select*
from employee_salary
where salary >= 50000;


select *
from employee_demographics
where birth_date > "1981-01-01"
and gender = "male";

select *
from employee_demographics
where birth_date > "1981-01-01"
or gender = "male";


select *
from employee_demographics
where birth_date > "1981-01-01"
or not gender = "male";


select *
from employee_demographics
where (first_name = "Leslie" and age = 44) or age > 45;

select *
from employee_demographics
where first_name like "%er%";

select *
from employee_demographics
where birth_date like "1985%";
















