select * 
from employee_demographics;

select * 
from employee_salary;

#INNER Join
 
select * 
from employee_demographics
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id;
    
    
select dem.employee_id, age, occupation, salary
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
# OUTER JOIN

select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
    
    
    
select dem.employee_id, age, occupation, salary
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
select dem.employee_id, age, occupation, salary
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;


# SELF JOIN

select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id;
    
    
select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
select emp1.employee_id as emp_org,
emp1.first_name as emp1_org_name,
emp1.last_name as emp1_org_last,
emp2.employee_id as emp_copy,
emp2.first_name as emp1_copy_name,
emp2.last_name as emp1_copy_last_name
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
select*
from parks_departments;
    
    
select dem.employee_id, age, occupation, salary, sal.dept_id, department_name
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
join parks_departments as pd
	on sal.dept_id = pd.department_id;
