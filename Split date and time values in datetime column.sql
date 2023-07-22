-- Split the date and time columns
UPDATE SocialBuzz..contentcategory
SET [Date] = CAST(DATEPART(YEAR, [Datetime]) AS VARCHAR(4)) + '-' +
             RIGHT('0' + CAST(DATEPART(MONTH, [Datetime]) AS VARCHAR(2)), 2) + '-' +
             RIGHT('0' + CAST(DATEPART(DAY, [Datetime]) AS VARCHAR(2)), 2),
    [Time] = CAST(DATEPART(HOUR, [Datetime]) AS VARCHAR(2)) + ':' +
             RIGHT('0' + CAST(DATEPART(MINUTE, [Datetime]) AS VARCHAR(2)), 2) + ':' +
             RIGHT('0' + CAST(DATEPART(SECOND, [Datetime]) AS VARCHAR(2)), 2);

SELECT * FROM SocialBuzz..contentcategory