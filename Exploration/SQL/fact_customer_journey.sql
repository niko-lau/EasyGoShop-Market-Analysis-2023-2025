SELECT *
FROM dbo.customer_journey;



-- Common Table Expression (CTE) to identify and tag duplicate records

WITH DuplicateRecords AS (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        Stage,
        Action,
        Duration,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action  
            ORDER BY JourneyID  
        ) AS row_num
    FROM 
        dbo.customer_journey
)


    
SELECT *
FROM DuplicateRecords
WHERE row_num > 1
ORDER BY JourneyID


-- Outer query selects the final cleaned and standardized data
    
SELECT 
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Stage,
    Action,
    COALESCE(Duration, avg_duration) AS Duration  -- Replaces missing durations with the average duration for the corresponding date
FROM 
    (
        SELECT 
            JourneyID,
            CustomerID,
            ProductID,
            VisitDate,
            UPPER(Stage) AS Stage,
            Action,
            Duration,
            AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,  -- Calculates the average duration for each date, using only numeric values
            ROW_NUMBER() OVER (
                PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action
                ORDER BY JourneyID
            ) AS row_num
        FROM 
            dbo.customer_journey
    ) AS subquery  -- Names the subquery for reference in the outer query
WHERE 
    row_num = 1;
