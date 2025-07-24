#Commen Table Expression

select gender, avg(salary), min(salary), max(salary), count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender    
;

#CTE_EXAMPLE
with cte_example as
(
select gender, avg(salary) avg_sal, min(salary)  min_sal, max(salary)  max_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender    
)
select gender, min_sal
from cte_example;


#Multiple CTE
with cte_example as
(
select employee_id, gender,birth_date
from employee_demographics 
where birth_date > "1985-01-01"
),
cte_example2 as
(
select employee_id, first_name,last_name,salary
from employee_salary
where salary > 40000
)
select *
from cte_example
join cte_example2
	on cte_example.employee_id = cte_example2.employee_id;







