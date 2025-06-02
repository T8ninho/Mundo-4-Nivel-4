--Inserir Motoristas
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato)
VALUES 
(1, 'Pedro Avilar', '00112233445', 'Estrada Taboão, 356 - SP', '(11) 91122-1122'),
(2, 'Claudio Pontes', '00223344556', 'Rua Laranjal, 300 - SP', '(11) 92233-3322'),
(3, 'Wilson Araújo', '00334455667', 'Avenida Tropical, 390 - SP', '(11) 93344-3355');
GO

--Inserir Clientes
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES 
(1, 'Cláudia Grando', 'Horizonte Prata', 'Rua Puma, 600 - SP', '(11) 95555-5678'),
(2, 'Jane White', 'Marcondes e CIA', 'Rua Principal, 678 - SP', '(11) 99999-1111');
GO

--Inserir Pedidos
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES 
(101, 1, 1, 'Transporte de eletrônicos - 50 caixas', '2025-05-30', 'Aguardando coleta'),
(102, 2, 2, 'Transporte de fertilizante - 20 caixas', '2025-05-15', 'Entregue'),
(103, 1, 3, 'Transporte de alimentos - 120 caixas', '2025-05-13', 'Entregue');
GO

--Verificar dados inseridos
--Drivers
SELECT * FROM Drivers;
GO
--Clients
SELECT * FROM Clients;
GO
--Orders
SELECT * FROM Orders;
GO