SELECT *
FROM dbo.engagement_data


-- Clean and normalize the engagement_data table

SELECT 
    EngagementID,
    ContentID,
	CampaignID,
    ProductID,
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,  -- Replaces "Socialmedia" with "Social Media" and then converts all ContentType values to uppercase
    LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,  -- Extracts the Views part from the ViewsClicksCombined column by taking the substring before the '-' character
    RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks,  -- Extracts the Clicks part from the ViewsClicksCombined column by taking the substring after the '-' character
    Likes,
    FORMAT(CONVERT(DATE, EngagementDate), 'yyyy/MM/dd') AS EngagementDate  -- Converts and formats the date as dd.mm.yyyy
FROM 
    dbo.engagement_data  -- Specifies the source table from which to select the data
