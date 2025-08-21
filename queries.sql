-- Best-selling books
SELECT b.title, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Books b ON od.book_id = b.book_id
GROUP BY b.title
ORDER BY total_sold DESC;

-- Total revenue
SELECT SUM(amount) AS total_revenue FROM Payments;

-- User purchase history
SELECT u.name, b.title, od.quantity, o.order_date
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Books b ON od.book_id = b.book_id
ORDER BY u.name, o.order_date;
