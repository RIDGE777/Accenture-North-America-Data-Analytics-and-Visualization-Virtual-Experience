SELECT r.ContentID,
	r.ReactionType,
	r.Datetime,
	c.ContentType,
	c.Category,
	rt.Sentiment,
	rt.Score
INTO SocialBuzz.dbo.contentcategory
FROM SocialBuzz.dbo.reactions r
JOIN SocialBuzz.dbo.content c ON
r.ContentID = c.ContentID
JOIN SocialBuzz.dbo.reactiontypes rt ON
r.ReactionType = rt.ReactionType;

SELECT TOP 10 * FROM SocialBuzz..contentcategory