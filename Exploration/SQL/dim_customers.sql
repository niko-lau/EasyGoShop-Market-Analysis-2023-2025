SELECT *
FROM dbo.customers;

SELECT *
FROM dbo.geography;


-- Combine customers table with geography table to enrich customer data with geographic information

SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Gender,
    c.Age,
    g.Country,
    g.City

FROM 
    dbo.customers as c
LEFT JOIN
    dbo.geography g
ON 
    c.GeographyID = g.GeographyID;
