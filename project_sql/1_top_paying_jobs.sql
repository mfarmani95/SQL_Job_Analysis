/*
Find the top paying jobs
    - Identify the top 10 jobs with highest salary which are Remote.
    - Focus on job postings with specified salaries (remove nulls).
    - Highlight he top-paying opportuinities for Data related jobs 
*/


SELECT 
    Job_ds.job_id,
    Job_ds.job_title_short,
    company_dim.name AS company_name,
    Job_ds.job_schedule_type,
    Job_ds.salary_year_avg,
    Job_ds.job_location,
    Job_ds.job_posted_date

FROM 
    job_postings_fact AS Job_ds
LEFT JOIN company_dim ON Job_ds.company_id = company_dim.company_id    
WHERE 
    Job_ds.job_location = 'Anywhere' AND 
    Job_ds.salary_year_avg IS NOT NULL AND
    Job_ds.job_title_short LIKE '%Data%'
ORDER BY Job_ds.salary_year_avg DESC
LIMIT 10;

-- SELECT * FROM company_dim LIMIT 2;
-- SELECT * FROM job_postings_fact LIMIT 2;