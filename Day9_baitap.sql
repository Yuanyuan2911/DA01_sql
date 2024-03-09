---ex01
SELECT 
COUNT('laptop') as laptop_reviews,
COUNT('phone') + COUNT('tablet') as mobile_views
FROM viewership
---ex02
SELECT x,y,z,
CASE
WHEN x + y > z and  x + z > y and  y + z > x THEN 'Yes'
ELSE 'No'
END as triangle
FROM Triangle
---ex03

---ex04
SELECT NAME FROM customer
WHERE referee_id IS NULL OR referee_id=1;
---ex05
SELECT survived,
    sum(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY  survived
