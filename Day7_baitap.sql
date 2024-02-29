---ex01
SELECT Name
FROM STUDENTS
WHERE Marks >75
ORDER BY RIGHT (Name,3), ID ASC
---ex02
SELECT user_id,      
CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT(name, length(name)-1))) AS name
FROM Users
ORDER BY user_id
---ex03
SELECT manufacturer,
'$'||ROUND(SUM(total_sales)/1000000,0)||' '||'milion'
FROM pharmacy_sales AS sale
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer
---ex04 (làm lại)
SELECT 
EXTRACT(month from submit_date) as mth,
product_id,
ROUND(AVG(stars),2) as AVG_Stars
FROM reviews
GROUP BY mth,product_id
ORDER BY mth,product_id 
---ex05
SELECT  sender_id,
COUNT(message_id) AS message_count
FROM messages
WHERE EXTRACT(month from sent_date)=8 AND EXTRACT(year from sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
---ex06
SELECT tweet_id 
FROM Tweets
WHERE (LENGTH(content)>15)
---ex08 (làm lại)
SELECT
COUNT(employee_id) AS number_employee
FROM employees
WHERE EXTRACT(month from joining_date) BETWEEN 1 AND 7
ABD EXTRACT (year from joining_date)=2022
---ex09
SELECT
POSITION('a' in first_name) as position
from worker
where first_name='Amitah'
---ex10
