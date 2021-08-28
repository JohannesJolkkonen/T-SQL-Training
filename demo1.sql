SET STATISTICS IO ON

SELECT
    CustomerID,
    SalesOrderID,
    OrderDate,
    TotalDue,
    --SUM(TotalDue) OVER (ORDER BY [SalesOrderID]) RunningTotal
    SUM(TotalDue) OVER (ORDER BY [SalesOrderID] ROWS UNBOUNDED PRECEDING) RunningTotal --Default behaviour
FROM Sales.SalesOrderHeader
Order By SalesOrderID;

SELECT
    PurchaseOrderID,
    PurchaseOrderDetailID,
    ProductID,
    LineTotal,
    SUM(LineTotal) OVER (ORDER BY PurchaseOrderID
        ROWS UNBOUNDED PRECEDING) TotalDue 
FROM Purchasing.PurchaseOrderDetail
ORDER BY PurchaseOrderID;