SELECT TOP 10 Category, SUM(Score) AS Cumulative_Score
FROM SocialBuzz..contentcategory
GROUP BY Category
ORDER BY SUM(Score) DESC;

SELECT * FROM SocialBuzz..contentcategory