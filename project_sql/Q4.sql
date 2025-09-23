/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    sd.skills as Job_Skills,
    count(jpf.job_id) as Count_Jobs
    
FROM job_postings_fact jpf
inner join skills_job_dim sjd ON jpf.job_id = sjd.job_id
inner join skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE job_title_short = 'Data Analyst'
GROUP BY sd.skills
ORDER BY Count_Jobs DESC
limit 5


-- Result 
-- "job_skills","count_jobs"
-- "sql","92628"
-- "excel","67031"
-- "python","57326"
-- "tableau","46554"
-- "power bi","39468"