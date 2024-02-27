---ex01
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
---ex2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION
---ex5
SELECT candidate_id
FROM candidates
WHERE skill IN('Python','Tableau','PostgreSQL')
GROUP BY CANDIDATE_ID
HAVING COUNT(skill)=3;
---ex6
SELECT user_id,
DATE(max(post_date))-DATE(min(post_date)) as days_between
FROM posts
WHERE post_date>='2021-02-02' AND post_date<'2022-01-01'
GROUP BY user_id
HAVING COUNT(post_id)>=2
---ex7
SELECT card_name,
MAX(issued_amount)- MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC
---ex8
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales<cogs
GROUP BY manufacturer	
ORDER BY total_loss DESC
---ex9
SELECT * FROM Cinema
WHERE id%2=1 AND description !='boring'
ORDER BY rating DESC
---ex10
SELECT teacher_id,
COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
---ex11
SELECT user_id, 
COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
---ex12
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student )>=5
