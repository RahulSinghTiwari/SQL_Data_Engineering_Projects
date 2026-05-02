SELECT
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
FROM
    job_postings_fact
LIMIT 10;

-- company_dim table
SELECT
    company_id,
    name
FROM
    company_dim
LIMIT 10;

SELECT * FROM
    company_dim
LIMIT 10;

SELECT *
FROM
    company_dim
WHERE
    name IN ('Facebook', 'Meta');
-- skills_job_dim table
SELECT *
FROM
    skills_job_dim
LIMIT 5;
-- skills_dim table
SELECT *
FROM
    skills_dim
LIMIT 5;

-- querying information_schema
SELECT *
FROM information_schema.tables
WHERE table_catalog = 'data_jobs';

SELECT *
FROM information_schema.columns
WHERE table_catalog = 'data_jobs';

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_catalog = 'data_jobs'

-- PRAGMA another sq lite command to inspect meta data
PRAGMA show_tables;
PRAGMA show_tables_expanded; -- expanded table

-- DESCRIBE (specific to DUCKDB)
DESCRIBE job_postings_fact;