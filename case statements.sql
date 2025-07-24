select first_name, last_name,
age,
case
	when age <= 30 then "young"
    when age between 31 and 50 then "old"
    when age > 50 then "too old"
end as age_catogory
from employee_demographics;



select first_name,
last_name,salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;
