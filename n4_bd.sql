CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Empresa VARCHAR(100),
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES 
    (4, 'John Doe', 'XYZ Corporation', '123 Main Street', 'john.doe@example.com'),
    (5, 'Jane Smith', 'ABC Ltd', '456 Oak Avenue', 'jane.smith@example.com'),
    (6, 'Bob Johnson', 'Tech Innovations', '789 Pine Road', 'bob.johnson@example.com');


SELECT [ClientID],[Nome],[Empresa],[Endereço],[Contato]
FROM [dbo].[Clients]
ORDER BY [Nome] DESC;


------------------------------------------------------------------------------------------


 
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Nome VARCHAR(100),
    CNH VARCHAR(20),
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);

INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES 
    (4, 'Ana Carolina Oliveira', '98765432101', 'Avenida dos Estados 200', 'ana.oliveira@example.com'),
    (5, 'Bruno Santos', '12345678901', 'Rua das Flores 30', 'bruno.santos@example.com'),
    (6, 'Camila Oliveira', '56789012345', 'Travessa da Paz 75', 'camila.oliveira@example.com');

SELECT [DriverID], [Nome], [CNH], [Endereço], [Contato]
FROM [dbo].[Drivers];



----------------------------------------------------------------------------------------------




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


INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES
    (4, 4, 4, 'Entrega em Campinas', '2024-11-15', 'agendado'),
    (5, 5, 5, 'Transporte para Guarulhos', '2024-12-02', 'em percurso'),
    (6, 6, 6, 'Carregamento para Itu', '2024-06-18', 'finalizado');


UPDATE Orders
SET [Status] = 'em curso'
WHERE OrderID = 2;


SELECT TOP (1000)
    [OrderID],
    [ClientID],
    [DriverID],
    [DetalhesPedido],
    [DataEntrega],
    [Status]
FROM [dbo].[Orders];


DELETE FROM Orders
WHERE Status = 'finalizado';


SELECT TOP (1000)
    [OrderID],
    [ClientID],
    [DriverID],
    [DetalhesPedido],
    [DataEntrega],
    [Status]
FROM [dbo].[Orders];




-----------------------------------------------------------------------------------------------------
