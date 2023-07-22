SELECT * FROM SocialBuzz..reactions

-- Check for blanks in the ReactionType column
SELECT
	COUNT(CASE WHEN [ReactionType] IS NULL OR [ReactionType] = '' THEN 1 END) AS [BlankReactionTypeCount]
FROM SocialBuzz..reactions;

-- Delete NULLs in the ReactionType column
DELETE FROM SocialBuzz..reactions
WHERE [ReactionType] IS NULL OR [ReactionType] = '';

SELECT
	COUNT(CASE WHEN [ReactionType] IS NULL OR [ReactionType] = '' THEN 1 END) AS [BlankReactionTypeCount]
FROM SocialBuzz..reactions;

