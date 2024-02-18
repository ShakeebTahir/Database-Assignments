SELECT Customer.CustomerID, CustomerName, ProductName, Quantity, ListPrice
FROM PRODUCT
INNER JOIN dbo.[dbo.ORDERS_]
ON PRODUCT.ProductID = dbo.[dbo.ORDERS_].ProductID
INNER JOIN CUSTOMER
ON CUSTOMER.CustomerID = dbo.[dbo.ORDERS_].CustomerID
WHERE CUSTOMER.City = 'London';