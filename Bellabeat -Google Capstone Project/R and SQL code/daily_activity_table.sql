--=============================
--Standardizing table names
--=============================
ALTER TABLE weight_loginfo
RENAME TO weight_log_info;

ALTER TABLE weight_log_info
RENAME COLUMN id TO user_id;

ALTER TABLE weight_log_info
RENAME COLUMN weightkg TO weight_kg;

ALTER TABLE weight_log_info
RENAME COLUMN weightpounds TO weight_pounds;

ALTER TABLE weight_log_info
RENAME COLUMN ismanualreport TO is_manual_report;

ALTER TABLE weight_log_info
RENAME COLUMN logid TO log_id;

--=============================
--Checking for duplicates
--=============================
SELECT user_id, date, COUNT(*)
FROM weight_log_info
GROUP BY date, user_id
HAVING COUNT(*) >1;

--=============================
--Checking for missing values
--=============================
SELECT *
FROM weight_log_info
WHERE user_id IS NULL
   OR date IS NULL
   OR weight_kg IS NULL
   OR weight_pounds IS NULL
   OR fat IS NULL
   OR bmi IS NULL
   OR is_manual_report IS NULL
   OR log_id IS NULL;

--=============================
--Dropping empty column
--=============================
ALTER TABLE weight_log_info
DROP COLUMN Fat;

--=============================
--Checking invalid values
--=============================
SELECT *
FROM weight_log_info
WHERE weight_kg < 0
  OR bmi < 0
  OR weight_pounds < 0;














