-- SELECT *
-- FROM dbo.customer_reviews;


-- Clean whitespace issues in the ReviewText column

CREATE TABLE fact_customer_reviews (
    ReviewID INT,
    CustomerID INT,
    ProductID INT,
    ReviewDate DATE,
    Rating DECIMAL(2, 1),
    ReviewText VARCHAR(MAX)
);



INSERT INTO fact_customer_reviews (ReviewID, CustomerID, ProductID, ReviewDate, Rating, ReviewText)
SELECT 
    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    -- Cleans up the ReviewText by replacing double spaces with single spaces to ensure the text is more readable and standardized
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    dbo.customer_reviews;




SELECT *
FROM dbo.fact_customer_reviews