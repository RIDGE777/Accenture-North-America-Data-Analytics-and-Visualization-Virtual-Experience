SELECT * FROM SocialBuzz..content

-- 1. DROP the F1 Column
ALTER TABLE SocialBuzz..content
DROP COLUMN[F1];

SELECT TOP 10 * FROM SocialBuzz..content

-- 2. DROP the URL Column
ALTER TABLE SocialBuzz..content
DROP COLUMN[URL];

SELECT TOP 10 * FROM SocialBuzz..content

-- Check for blanks in all the columns
SELECT
	COUNT(CASE WHEN [Content ID] IS NULL OR [Content ID] = '' THEN 1 END) AS [BlankContentIDCount],
	COUNT(CASE WHEN [Type] IS NULL OR [Type] = '' THEN 1 END) AS [BlankTypeCount],
	COUNT(CASE WHEN [Category] IS NULL OR [Category] = '' THEN 1 END) AS [BlankCategoryCount]
FROM SocialBuzz..content

-- Closer look of the Category Column
SELECT DISTINCT (Category) FROM SocialBuzz..content

-- Let's remove the "" sign
UPDATE SocialBuzz..content SET Category = REPLACE (Category, '"', '')
SELECT DISTINCT (Category) FROM SocialBuzz..content

-- Let's change the capital case letter to small case letter
UPDATE SocialBuzz..content SET Category = LOWER (Category)
SELECT DISTINCT (Category) FROM SocialBuzz..content
