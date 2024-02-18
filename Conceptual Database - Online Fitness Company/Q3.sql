SELECT CustomerName, ProductName
FROM CUSTOMER 
INNER JOIN REVIEW
ON Customer.CustomerID = Review.CustomerID
INNER JOIN PRODUCT
ON REVIEW.ProductID = Product.ProductID
WHERE REVIEW.Rating = 4;