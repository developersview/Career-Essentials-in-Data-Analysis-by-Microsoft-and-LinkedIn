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
SELECT TOP 2 *
FROM [Production].[Product] AS p
INNER JOIN [Sales].[SalesOrderDetail] AS sod
ON p.ProductID = sod.ProductID;

--FULL JOIN
SELECT TOP 2 *
FROM [Production].[Product] AS p
FULL JOIN [Sales].[SalesOrderDetail] AS sod
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