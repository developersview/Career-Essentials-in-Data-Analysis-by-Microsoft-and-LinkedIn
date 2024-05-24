--LEFT JOIN
SELECT TOP 2 *
FROM [Production].[Product] AS p
LEFT JOIN [Sales].[SalesOrderDetail] AS sod
ON p.ProductID = sod.ProductID;

--RIGHT JOIN
SELECT TOP 2 *
FROM [Production].[Product] AS p
RIGHT JOIN [Sales].[SalesOrderDetail] AS sod
ON p.ProductID = sod.ProductID;

--INNER JOIN
SELECT   p.ProductID
		,p.ProductNumber
		,p.Color
		,p.Name
		,p.StandardCost
		,sod.SalesOrderID
		,sod.OrderQty
		,sod.UnitPrice
FROM [Production].[Product] p
INNER JOIN [Sales].[SalesOrderDetail] sod
ON p.ProductID = sod.ProductID;

--FULL JOIN
SELECT  p.ProductID
		,p.ProductNumber
		,p.Color
		,p.Name
		,p.StandardCost
		,sod.SalesOrderID
		,sod.OrderQty
		,sod.UnitPrice
FROM [Production].[Product] p
FULL JOIN [Sales].[SalesOrderDetail] sod
ON p.ProductID = sod.ProductID;

--CROSS JOIN
SELECT TOP 3 *
FROM [Production].[Product] AS p
CROSS JOIN [Sales].[SalesOrderDetail] AS sod;

--find only those product which has subcategory
SELECT p.ProductID
	,p.Name
	,psc.ProductSubcategoryID
	,psc.Name
FROM [Production].[Product] p
INNER JOIN [Production].[ProductSubcategory] psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID;

--find only those product which don't have subcategory
SELECT p.ProductID
	,p.Name
	,psc.ProductSubcategoryID
	,psc.Name
FROM [Production].[Product] p
LEFT JOIN [Production].[ProductSubcategory] psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID
WHERE p.ProductSubcategoryID is NULL;

--SELF JOIN
SELECT sp1.BusinessEntityID
	,sp1.TerritoryID
	,sp1.SalesQuota
	,sp1.Bonus
	,sp2.BusinessEntityID
	,sp2.TerritoryID
	,sp2.SalesQuota
	,sp2.Bonus
FROM [Sales].[SalesPerson] sp1
INNER JOIN [Sales].[SalesPerson] sp2
ON sp1.BusinessEntityID = sp2.BusinessEntityID;