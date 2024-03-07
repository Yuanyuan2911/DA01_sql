---ex01
SELECT 
COUNT('laptop') as laptop_reviews,
COUNT('phone') + COUNT('tablet') as mobile_views
FROM viewership
---ex02

---ex03

---ex04
SELECT NAME FROM customer
WHERE referee_id IS NULL OR referee_id=1;
---ex05
---(CASE 
---  WHEN pclass = '1' THEN ' first_class'
---  ELSE '0'
---END),
--(CASE 
---  WHEN pclass = '2' THEN ' second_classs'
---  ELSE '0'
---END),
--- (CASE 
---  WHEN pclass = '3' THEN ' third_class'
---  ELSE '0'
---END)
