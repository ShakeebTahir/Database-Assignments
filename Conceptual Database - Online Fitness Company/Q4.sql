SELECT CustomerName, PostalCode, ProductName
FROM dbo.[dbo.ORDERS_]
INNER JOIN CUSTOMER
ON dbo.[dbo.ORDERS_].CustomerID = CUSTOMER.CustomerID
INNER JOIN PRODUCT
ON dbo.[dbo.ORDERS_].ProductID = PRODUCT.ProductID
WHERE CUSTOMER.City <> 'Toronto';