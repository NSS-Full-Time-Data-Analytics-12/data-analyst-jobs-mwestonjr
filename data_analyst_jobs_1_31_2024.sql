SELECT *
FROM data_analyst_jobs;

/* Number 1. */
SELECT COUNT(*)
FROM data_analyst_jobs;
/* Answer - 1793 */

/* Number 2. */
SELECT *
FROM data_analyst_jobs
LIMIT 10;
/* Answer - ExxonMobil */

/* Number 3. */
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location LIKE 'TN';
/* Answer - 21 */

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location LIKE 'TN' OR location LIKE 'KY';
/* Answer - 27 */

/* Number 4. */
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location LIKE 'TN'
AND star_rating > 4;
/* Answer - 3 */

/* Number 5. */
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
/* Answer - 151 */

/* Number 6. */
SELECT location AS state, ROUND(AVG(star_rating),2)AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating DESC;
/* Answer - NE */

/*Number 7. */
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;
/* Answer - 881 */

/* Number 8. */
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';
/* Answer - 230 */

/* Number 9. */
SELECT company, ROUND(AVG(star_rating),2)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY company;

SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE review_count > 5000;

/* Number 10. */
SELECT company, ROUND(AVG(star_rating),2)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating)DESC;
/* General Motors, 4.20 */

/* Number 11. */
SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'
GROUP BY title;

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
/* 774 */

/* Number 12 */
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';

/* Bonus */
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21 AND domain IS NOT NULL;

SELECT domain AS hard_to_fill, days_since_posting
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21 AND domain IS NOT NULL
ORDER BY days_since_posting DESC;

SELECT domain, COUNT(domain) AS hard_to_fill
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21 AND domain IS NOT NULL
GROUP BY domain
ORDER BY hard_to_fill DESC
LIMIT 4;






