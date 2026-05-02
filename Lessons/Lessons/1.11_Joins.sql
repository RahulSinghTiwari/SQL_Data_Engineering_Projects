----------------LEFT JOIN-----------------------
SELECT
    jpf.*,
    cd.*
FROM
    job_postings_fact as jpf
LEFT JOIN company_dim as cd
    ON jpf.company_id = cd.company_id
LIMIT 10;
-----------------------------------------------
SELECT
    job_id,
    job_title_short,
    name AS company_name,
    job_location
FROM
    job_postings_fact as jpf
LEFT JOIN company_dim as cd
    ON jpf.company_id = cd.company_id
LIMIT 10;
-----------------------------------------------
SELECT *
FROM
    job_postings_fact
LIMIT 10;

SELECT *
FROM
    company_dim
LIMIT 10;
-----------------------------------------------
SELECT
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
LEFT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;
-----------------------------------------------
SELECT
    COUNT(*)
FROM
    job_postings_fact;

----------------RIGHT JOIN-----------------------
-- matching records from the left table all the records from the right table
SELECT
    jpf.job_id,
    jpf.job_title_short,
    jpf.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact as jpf
RIGHT JOIN company_dim AS cd
    ON  jpf.company_id = cd.company_id;

----------------INNER JOIN-----------------------
-- Only returns matching rows of both the rows

SELECT
    jpf.job_id,
    jpf.job_title_short,
    jpf.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
INNER JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

----------------FULL OUTER JOIN/ FULL JOIN-----------------------
SELECT
    jpf.job_id,
    jpf.job_title_short,
    jpf.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
FULL JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;
----------------------------------------------------------------

SELECT *
FROM skills_job_dim
LIMIT 10;

SELECT *
FROM skills_dim
LIMIT 10;

----------------------------------------------------------------
-- joining the three tables 
SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
LEFT JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
LEFT JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
LIMIT 10;

SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id;