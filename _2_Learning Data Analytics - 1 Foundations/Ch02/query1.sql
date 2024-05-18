SELECT TOP 10 [SalesOrderID]
	,[OrderDate]
	,[DueDate]
	,[ShipDate]
	,[SalesOrderNumber]
	,[CustomerID]
	,[SubTotal]
	,[TaxAmt]
	,[Freight]
	,[TotalDue]
FROM Sales.SalesOrderHeader
WHERE CustomerID > 29900 AND CustomerID < 29950
ORDER BY OrderDate ASC;

SELECT *
FROM Sales.SalesOrderHeader
WHERE CustomerID > 29900 AND CustomerID < 29950
ORDER BY CustomerID, SalesOrderNumber;


