-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT Customers.CustomerID, Customers.Firstname, Customers.Lastname, Customers.Email, COUNT(Orders.OrderID) AS OrderCount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP by Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 3;