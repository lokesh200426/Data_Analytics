select occupation, avg(salary)
from employee_salary
where occupation like '%manager'
group by occupation
having avg(salary) > 75000;



select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
;