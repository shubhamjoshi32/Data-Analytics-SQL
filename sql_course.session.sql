-- WITH monthly_counts AS (
    SELECT 
        EXTRACT(MONTH FROM job_posted_date) AS month,
        job_title_short,
        COUNT(*) AS postings
    FROM job_postings_fact
    GROUP BY month, job_title_short
-- ),
-- monthly_max AS (
--     SELECT 
--         month,
--         MAX(postings) AS max_postings
--     FROM monthly_counts
--     GROUP BY month
-- )
-- SELECT 
--     mc.month,
--     mc.job_title_short,
--     mc.postings
-- FROM monthly_counts mc
-- JOIN monthly_max mm 
--     ON mc.month = mm.month 
--    AND mc.postings = mm.max_postings
-- ORDER BY mc.month;
