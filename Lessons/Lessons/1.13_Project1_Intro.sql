SELECT
    COUNT(DISTINCT job_country)
FROM
    job_postings_fact
WHERE
    job_country = 'India';