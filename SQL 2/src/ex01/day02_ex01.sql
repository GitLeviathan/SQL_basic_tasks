SELECT missing_date::date
FROM (
  SELECT generate_series(TIMESTAMP '2022-01-01', '2022-01-10', '1 day') AS missing_date
) AS all_dates
LEFT JOIN (
  SELECT DISTINCT visit_date
  FROM person_visits
  WHERE person_id BETWEEN 1 AND 2
) AS visits
ON all_dates.missing_date = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY 1;