select*
from layoffs_staging2;

select total_laid_off, sum(total_laid_off)
from layoffs_staging2
where total_laid_off is not null
group by 1;

select*
from layoffs_staging2;

select industry, sum(total_laid_off)
from layoffs_staging2
where total_laid_off is not null
group by 1; 


select company, sum(total_laid_off) as laid_off
from layoffs_staging2
where total_laid_off is not null
group by 1
order by laid_off desc; 

select*
from layoffs_staging2;

select country, sum(total_laid_off) as laid_off
from layoffs_staging2
where total_laid_off is not null
group by 1
order by laid_off desc; 

select year(date), sum(total_laid_off) as laid_off 
from layoffs_staging2
where year(date) is not null
group by 1
order by laid_off;

with year_laid_off as
(
select year(date), sum(total_laid_off) as laid_off 
from layoffs_staging2
where year(date) is not null
group by 1
order by laid_off
)
select *
from year_laid_off;

select stage, sum(total_laid_off) as laid_off 
from layoffs_staging2
where stage is not null
group by 1
order by laid_off;

select *
from layoffs_staging2;

select substring(date, 1,7) as date_laid, sum(total_laid_off)
from layoffs_staging2
where substring(date, 1,7) is not null
group by date_laid
order by 1;

with rolling as
(
select substring(date, 1,7) as date_laid, sum(total_laid_off) as total_laid
from layoffs_staging2
where substring(date, 1,7) is not null
group by date_laid
order by 1
)
select date_laid,total_laid, sum(total_laid) over(order by date_laid) as rolling_laid_off
from rolling;

select company, sum(total_laid_off) as laid_off
from layoffs_staging2
where total_laid_off is not null
group by 1
order by laid_off desc; 

select company, year(date), sum(total_laid_off) as laid_off
from layoffs_staging2
group by company, year(date)
order by 3 desc; 

with company_laid_off (company, years, laid_off)as
(
select company, year(date), sum(total_laid_off) as laid_off
from layoffs_staging2
group by company, year(date)
), company_year_rank as
(select company,years,laid_off,dense_rank() over(partition by years order by laid_off desc) as ranking
from company_laid_off
where years is not null)
select *
from company_year_rank
where ranking <= 5;





















