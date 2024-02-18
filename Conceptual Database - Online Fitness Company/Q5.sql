SELECT OrderID, CustomerName, Product.ProductID, ProductName, ShippingDate
FROM dbo.[dbo.ORDERS_]
INNER JOIN CUSTOMER
ON dbo.[dbo.ORDERS_].CustomerID = CUSTOMER.CustomerID
INNER JOIN PRODUCT
ON dbo.[dbo.ORDERS_].ProductID = PRODUCT.ProductID
WHERE dbo.[dbo.ORDERS_].Completed = 'No';