select gender, avg(age)
from employee_demographics
group by gender;


select gender, max(age)
from employee_demographics
group by gender;

select occupation, max(salary)
from employee_salary
group by occupation;






