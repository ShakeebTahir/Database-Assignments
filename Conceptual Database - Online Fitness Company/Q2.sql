SELECT CustomerName, TotalPrice
FROM CUSTOMER INNER JOIN dbo.[dbo.ORDERS_]
ON CUSTOMER.CustomerID = dbo.[dbo.ORDERS_].CustomerID
WHERE TotalPrice < 200
ORDER BY TotalPrice DESC;