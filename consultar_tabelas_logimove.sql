--Listar todos os pedidos com nome do cliente e do motorista
SELECT 
    o.OrderID,
    c.Nome AS NomeCliente,
    d.Nome AS NomeMotorista,
    o.DetalhesPedido,
    o.DataEntrega,
    o.Status
FROM Orders o
JOIN Clients c ON o.ClientID = c.ClientID
JOIN Drivers d ON o.DriverID = d.DriverID;
GO

--Pedidos entregues, ordenados por data de entrega
SELECT 
    OrderID,
    DetalhesPedido,
    DataEntrega
FROM Orders
WHERE Status = 'Entregue'
ORDER BY DataEntrega DESC;
GO

--Contar total de pedidos por cliente
SELECT 
    c.Nome,
    COUNT(o.OrderID) AS TotalPedidos
FROM Clients c
LEFT JOIN Orders o ON c.ClientID = o.ClientID
GROUP BY c.Nome;
GO

--Listar motoristas com pedidos pendentes
SELECT DISTINCT d.Nome
FROM Drivers d
JOIN Orders o ON d.DriverID = o.DriverID
WHERE o.Status != 'Entregue';
GO

--Quantidade de pedidos que cada motorista entregou
SELECT 
    d.Nome,
    COUNT(o.OrderID) AS PedidosEntregues
FROM Drivers d
JOIN Orders o ON d.DriverID = o.DriverID
WHERE o.Status = 'Entregue'
GROUP BY d.Nome;
GO