SELECT
    o.OrderID,
    o.OrderDate,
    o.CustomerID,
    o.EmployeeID,
    o.StoreID,
    o.StatusCD,
    o.StatusDesc,
    o.Updated_at,
    COUNT(DISTINCT o.OrderID) AS OrderCount,  -- will be 1 per order
    SUM(OI.TotalPrice) AS Revenue
FROM {{ ref('orders_stg') }} o
JOIN {{ ref('orderitems_stg') }} OI 
    ON o.OrderID = OI.OrderID
GROUP BY
    o.OrderID,
    o.OrderDate,
    o.CustomerID,
    o.EmployeeID,
    o.StoreID,
    o.StatusCD,
    o.StatusDesc,
    o.Updated_at
