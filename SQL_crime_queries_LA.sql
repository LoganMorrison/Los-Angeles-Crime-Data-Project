-- Total Crime Per Year

SELECT year, COUNT(dr_no) AS total_crimes_per_year
FROM crime_data_cleaned
GROUP BY year
ORDER BY year;

-- 10 Most Common Crimes

SELECT crm_cd_desc, COUNT(*) AS total_crimes_per_type
FROM crime_data_cleaned
GROUP BY crm_cd_desc
ORDER BY total_crimes_per_type DESC
LIMIT 10;

-- Areas With the Most Crime

SELECT area_name, COUNT(*) AS total_crimes_committed_per_area
FROM crime_data_cleaned
GROUP BY area_name
ORDER BY total_crimes_committed_per_area DESC;

-- Crime by Time of Day

SELECT hour, COUNT(*) AS total_crimes_each_hour
FROM crime_data_cleaned
GROUP BY hour
ORDER BY hour;

-- Crime by Day of the Week

SELECT day_of_week, COUNT(*) AS total_crimes_each_day
FROM crime_data_cleaned
GROUP BY day_of_week
ORDER BY day_of_week;

-- Crime by Month

SELECT month, month_name, COUNT(*) AS total_crimes_per_month
FROM crime_data_cleaned
GROUP BY month
ORDER BY month ASC;

-- Crime Per Victim Sex

SELECT vict_sex, COUNT(*) AS total_victims_per_sex
FROM crime_data_cleaned
GROUP BY vict_sex
ORDER BY total_victims_per_sex;

-- Crime Per Victim Descent

SELECT vict_descent, COUNT(*) AS total_victims_per_descent
FROM crime_data_cleaned
GROUP BY vict_descent
ORDER BY total_victims_per_descent DESC;

-- Most Common Premises Where Crime Occurs

SELECT premis_desc, COUNT(*) AS premis
FROM crime_data_cleaned
GROUP BY premis_desc
ORDER BY premis DESC;

-- Amount of Crimes Involving a Weapon

SELECT weapon_desc, COUNT(*) AS weapons_involved
FROM crime_data_cleaned
GROUP BY weapon_desc
ORDER BY weapons_involved DESC;