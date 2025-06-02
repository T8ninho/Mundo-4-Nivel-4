--Tabela de Motoristas (Drivers)
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Nome VARCHAR(100),
    CNH VARCHAR(20),
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);
GO

--Tabela de Clientes (Clients)
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Empresa VARCHAR(100),
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);
GO

--Tabela de Pedidos (Orders)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    DriverID INT,
    DetalhesPedido TEXT,
    DataEntrega DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);
GO

--Listar as tabelas
SELECT name FROM sys.tables;
GO

--Visualizar as colunas de cada tabela
--Drivers
EXEC sp_columns Drivers;
GO
--Clients
EXEC sp_columns Clients;
GO
--Orders
EXEC sp_columns Orders;
GO