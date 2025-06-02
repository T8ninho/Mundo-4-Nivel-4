--CREATE - Inserir um novo pedido
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES (104, 2, 1, 'Transporte de ferramentas - 30 caixas', '2025-06-01', 'Aguardando coleta');
GO

--READ - Visualizar o pedido recém-inserido
SELECT * FROM Orders 
WHERE OrderID = 104;
GO

--UPDATE - Atualizar o status do pedido
UPDATE Orders
SET Status = 'Em trânsito'
WHERE OrderID = 104;
GO

--READ - Verificar se a atualização foi feita
SELECT OrderID, 
Status FROM Orders 
WHERE OrderID = 104;
GO

--DELETE - Excluir o pedido
DELETE FROM Orders 
WHERE OrderID = 104;
GO

--READ - Verificar se foi excluído
SELECT * FROM Orders 
WHERE OrderID = 104;
GO
