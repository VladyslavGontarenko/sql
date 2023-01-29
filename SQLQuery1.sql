CREATE TABLE Products
(
ID int NOT NULL IDENTITY,
Name nvarchar(100) NULL,
Price float NULL,
Made date NULL DEFAULT GETDATE(),
[valid up to] date NULL DEFAULT GETDATE() + 30,
Manufacturer nvarchar(100) NULL
)
GO