select *
from layoffs;

Create table layoffs_staging
like layoffs;

insert layoffs_staging
select *
from layoffs;
#Remove Duplicates
select*
from layoffs_staging;

with cte_duplicate as
(
select *,
row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised_millions) as row_num
from layoffs_staging
)

select *
from cte_duplicate
where row_num > 1;




select *
from layoffs_staging 
where company = 'iFit';

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` bigint DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select *
from layoffs_staging2;

insert into layoffs_staging2
select *,
row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised_millions) as row_num
from layoffs_staging;

select *
from layoffs_staging2
where row_num > 1;
;

delete 
from layoffs_staging2
where row_num > 1;

select *
from layoffs_staging2;

select *
from layoffs_staging2
where row_num > 1;

select *
from layoffs_staging2;

#Standardizing

select*
from layoffs_staging2;

select distinct company 
from layoffs_staging2;

select distinct company, trim(company)
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);

select industry
from layoffs_staging2;

select *
from layoffs_staging2
where industry like "%crypto%";

update layoffs_staging2
set industry = "crypto"
where industry like "%crypto%";

select distinct industry
from layoffs_staging2
order by 1;


select distinct country
from layoffs_staging2
order by 1;

select distinct country , trim(trailing "." from country)
from layoffs_staging2
order by 1; 

update layoffs_staging2
set country = trim(trailing "." from country);

select *
from layoffs_staging2
where country like "%United states%";

select date,
str_to_date(date, "%m/%d/%Y") 
from layoffs_staging2;

update layoffs_staging2
set date = str_to_date(date, "%m/%d/%Y") ;

select date 
from layoffs_staging2;

alter table layoffs_staging2
modify column date date;

#Null or Blank Values

select *
from layoffs_staging2
where total_laid_off is null 
and percentage_laid_off is null;


select *
from layoffs_staging2
where industry is null 
or industry = '';

select distinct industry
from layoffs_staging2;

select * from layoffs_staging2;

update layoffs_staging2
set industry = null 
where industry = '';

select *
from layoffs_staging2
where company = 'Carvana';

update layoffs_staging2 ls1
join layoffs_staging2 ls2
	on ls1.company = ls2.company
set ls1.industry = ls2.industry
where ls1.industry is null
and ls2.industry is not null;


select ls1.industry, ls2.industry
from layoffs_staging2 ls1
join layoffs_staging2 ls2
	on ls1.company = ls2.company
    and ls1. location = ls2.location
where ls1.industry is null
and ls2.industry is not null;

# Deleting Rows and columns

select *
from layoffs_staging2
where total_laid_off is null 
and percentage_laid_off is null;

delete
from layoffs_staging2
where total_laid_off is null 
and percentage_laid_off is null;

select *
from layoffs_staging2;

alter table layoffs_staging2
drop column row_num;

select *
from layoffs_staging2;















