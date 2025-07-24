# WINDOW FUNCTIONS

select * 
from employee_demographics;

select * 
from employee_salary;


# In window function we use over() and for partioning we use partition by inside of over ()

select gender,salary, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
#Rolling Total
select dem.employee_id,gender,salary, 
sum(salary) over(partition by gender order by dem.employee_id)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    

select dem.employee_id,dem.first_name,dem.last_name,gender,salary, 
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
#Roll_Number

select dem.employee_id,dem.first_name,dem.last_name,gender,salary, 
row_number() over(partition by gender order by salary desc) as Row_number_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;

#Rank
select dem.employee_id,dem.first_name,dem.last_name,gender,salary, 
rank() over(partition by gender order by salary desc) as rank_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    

#Dense_Rank    
select dem.employee_id,dem.first_name,dem.last_name,gender,salary, 
dense_rank() over(partition by gender order by salary desc) as dense_rank_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
#ALL WINDOW FUNCTIONS
select dem.employee_id,dem.first_name,dem.last_name,gender,salary, 
row_number() over(partition by gender order by salary desc) as Row_number_salary,
rank() over(partition by gender order by salary desc) as rank_salary,
dense_rank() over(partition by gender order by salary desc) as dense_rank_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
    
    
    
    