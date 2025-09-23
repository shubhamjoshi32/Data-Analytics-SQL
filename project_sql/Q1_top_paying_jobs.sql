-- What are the top-paying jobs for my role?

SELECT 
    job_id,
	job_title,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
    cd.name as Company_name
from job_postings_fact jpf
LEFT JOIN company_dim cd on jpf.company_id = cd.company_id

where 
    jpf.job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND  
    salary_year_avg IS NOT NULL
order by 
    salary_year_avg desc
limit 10