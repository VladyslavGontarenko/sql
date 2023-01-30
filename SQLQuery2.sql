/* Создать таблицы */

CREATE TABLE Category
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL
)
GO

CREATE TABLE Producer
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
id_address int NOT NULL
)
GO

CREATE TABLE Measurement
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
description nvarchar(100) NULL
)
GO

CREATE TABLE Markup
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
percentt int NULL
)
GO

CREATE TABLE Product
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
id_category int NOT NULL,
price float NULL,
quantity int NULL,
id_producer int NOT NULL,
id_measurement int NOT NULL,
id_markup int NOT NULL,
)
GO

CREATE TABLE Address
(
id int NOT NULL UNIQUE,
street nvarchar(100) NULL,
id_city int NOT NULL
)
GO

CREATE TABLE Delivery
(
id int NOT NULL UNIQUE,
id_product int NOT NULL,
id_supplier int NOT NULL,
price float NULL,
quantity int NULL,
date_of_delivery date NULL
)
GO

CREATE TABLE Sale
(
id int NOT NULL UNIQUE,
id_product int NOT NULL,
price float NULL,
quantity int NULL,
date_of_sale date NULL
)
GO

CREATE TABLE City
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
id_region int NOT NULL
)
GO

CREATE TABLE Supplier
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
id_adress int NOT NULL
)
GO

CREATE TABLE Region
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
id_country int NOT NULL
)
GO

CREATE TABLE Country
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL,
)
GO

/* Установить связь между таблицами */

ALTER TABLE Product
ADD
FOREIGN KEY (id_category) REFERENCES Category (id)
GO

ALTER TABLE Product
ADD
FOREIGN KEY (id_producer) REFERENCES Producer (id)
GO

ALTER TABLE Product
ADD
FOREIGN KEY (id_measurement) REFERENCES Measurement (id)
GO

ALTER TABLE Product
ADD
FOREIGN KEY (id_markup) REFERENCES Markup (id)
GO

ALTER TABLE Delivery
ADD
FOREIGN KEY (id_product) REFERENCES Product (id)
GO

ALTER TABLE Sale
ADD
FOREIGN KEY (id_product) REFERENCES Product (id)
GO

ALTER TABLE Region
ADD
FOREIGN KEY (id_country) REFERENCES Country (id)
GO

ALTER TABLE City
ADD
FOREIGN KEY (id_region) REFERENCES Region (id)
GO

ALTER TABLE Address
ADD
FOREIGN KEY (id_city) REFERENCES City (id)
GO

ALTER TABLE Producer
ADD
FOREIGN KEY (id_address) REFERENCES Address (id)
GO

ALTER TABLE Supplier
ADD
FOREIGN KEY (id_adress) REFERENCES Address (id)
GO

ALTER TABLE Delivery
ADD
FOREIGN KEY (id_supplier) REFERENCES Supplier (id)
GO

/* заполнить таблицы */

INSERT Category (id ,name)
VALUES
(1, 'milk'),
(2, 'meat'),
(3, 'bread'),
(4, 'fruits'),
(5, 'vegetables'),
(6, 'drinks'),
(7, 'alcohol'),
(8, 'groceries'),
(9, 'mushrooms'),
(10, 'confectionery'),
(11, 'eggs'),
(12, 'see'),
(13, 'tobacco'),
(14, 'medicines'),
(15, 'clothes');
GO

INSERT Country (id ,name)
VALUES
(1, 'Ukraine'),
(2, 'Germany'),
(3, 'China'),
(4, 'Japan'),
(5, 'Italy'),
(6, 'USA'),
(7, 'Nigeria'),
(8, 'Poland'),
(9, 'Cuba'),
(10, 'Canada'),
(11, 'Khazakstan'),
(12, 'Spain'),
(13, 'Island'),
(14, 'Norvey'),
(15, 'UK');
GO

INSERT Region (id ,name ,id_country)
VALUES
(1, 'Odesa', 1),
(2, 'Kyev', 1),
(3, 'Chsheczyan', 3),
(4, 'Guandun', 3),
(5, 'Bavaria', 2),
(6, 'Baden-Vutenberg', 2),
(7, 'Hokkido', 4),
(8, 'Tubu', 3),
(9, 'Cuba', 5),
(10, 'Bolcano', 5),
(11, 'Matera', 6),
(12, 'Ohio', 6),
(13, 'Florida', 7),
(14, 'Abia', 7),
(15, 'Adamava', 8),
(16, 'Lubelskie', 8),
(17, 'Podlaskie', 9),
(18, 'Pinar-Del-Rio', 9),
(19, 'Matanas', 10),
(20, 'Alberta', 10),
(21, 'Manitoba', 11),
(22, 'Amolinskaya', 11),
(23, 'Barcelona', 12),
(24, 'Malaga', 12),
(25, 'Westurland', 13),
(26, 'Westfirdir', 13),
(27, 'Trendelag', 14),
(28, 'Westlann', 14),
(29, 'Leeds', 15),
(30, 'Taunton', 15);
GO

INSERT City (id ,name ,id_region)
VALUES
(1, 'Odesa', 1),
(2, 'Kyev', 2),
(3, 'City1', 3),
(4, 'City2', 4),
(5, 'City3', 5),
(6, 'City4', 6),
(7, 'City5', 7),
(8, 'City6', 8),
(9, 'City7', 9),
(10, 'City8', 10),
(11, 'City9', 11),
(12, 'City10', 12),
(13, 'City11', 13),
(14, 'City12', 14),
(15, 'City13', 15),
(16, 'City14', 16),
(17, 'City15', 17),
(18, 'City16', 18),
(19, 'City17', 19),
(20, 'City18', 20),
(21, 'City19', 21),
(22, 'City20', 22),
(23, 'City21', 23),
(24, 'City22', 24),
(25, 'City23', 25),
(26, 'City24', 26),
(27, 'City25', 27),
(28, 'City26', 28),
(29, 'City27', 29),
(30, 'City28', 30);
GO

INSERT Address(id ,street ,id_city)
VALUES
(1, 'street1', 1),
(2, 'street2', 2),
(3, 'street3', 3),
(4, 'street4', 4),
(5, 'street5', 5),
(6, 'street6', 6),
(7, 'street7', 7),
(8, 'street8', 8),
(9, 'street9', 9),
(10, 'street10', 10),
(11, 'street11', 11),
(12, 'street12', 12),
(13, 'street13', 13),
(14, 'street14', 14),
(15, 'street15', 15),
(16, 'street16', 16),
(17, 'street17', 17),
(18, 'street18', 18),
(19, 'street19', 19),
(20, 'street20', 20),
(21, 'street21', 21),
(22, 'street22', 22),
(23, 'street23', 23),
(24, 'street24', 24),
(25, 'street25', 25),
(26, 'street26', 26),
(27, 'street27', 27),
(28, 'street28', 28),
(29, 'street29', 29),
(30, 'street30', 30);
GO

INSERT Producer (id ,name ,id_address)
VALUES
(1, 'Alex', 1),
(2, 'Nurberg', 3),
(3, 'Misha', 5),
(4, 'Anton', 7),
(5, 'Edik', 9),
(6, 'Vladyslav', 11),
(7, 'Masha', 13),
(8, 'Vitaliy', 15),
(9, 'Zhenya', 17),
(10, 'Iosif', 19),
(11, 'Dima', 21),
(12, 'Sonya', 23),
(13, 'Aganes', 25),
(14, 'Vasyl', 27),
(15, 'Serega', 29);
GO

INSERT Measurement (id ,name, description)
VALUES
(1, 'A', 'Measurement1'),
(2, 'B', 'Measurement2'),
(3, 'C', 'Measurement3'),
(4, 'D', 'Measurement4'),
(5, 'E', 'Measurement5'),
(6, 'F', 'Measurement6'),
(7, 'G', 'Measurement7'),
(8, 'Q', 'Measurement8'),
(9, 'W', 'Measurement9'),
(10, 'E', 'Measurement10'),
(11, 'R', 'Measurement11'),
(12, 'T', 'Measurement12'),
(13, 'U', 'Measurement13'),
(14, 'I', 'Measurement14'),
(15, 'O', 'Measurement15');
GO

INSERT Markup (id ,name, percentt)
VALUES
(1, 'A', 5),
(2, 'B', 10),
(3, 'C', 15),
(4, 'D', 20),
(5, 'E', 25),
(6, 'F', 30),
(7, 'G', 35),
(8, 'Q', 40),
(9, 'W', 45),
(10, 'E', 50),
(11, 'R', 55),
(12, 'T', 60),
(13, 'U', 65),
(14, 'I', 70),
(15, 'O', 75);
GO

INSERT Product(id ,name, id_category, price, quantity, id_producer, id_measurement, id_markup)
VALUES
(1, 'milk', 1, 50.30, 75, 1, 1, 1),
(2, 'meat', 2, 80.80, 53, 2, 2, 2),
(3, 'bread', 3, 30.25, 46, 3, 3, 3),
(4, 'orange', 4, 26.40, 83, 4, 4, 4),
(5, 'carrot', 5, 14.20, 17, 5, 5, 5),
(6, 'coca-cola', 6, 21.30, 92, 6, 6, 6),
(7, 'jack-danials', 7, 240.30, 27, 7, 7, 7),
(8, 'rice', 8, 15.90, 56, 8, 8, 8),
(9, 'white', 9, 98.40, 47, 9, 9, 9),
(10, 'donut', 10, 15.99, 63, 10, 10, 10),
(11, 'egg', 11, 60.40, 300, 11, 11, 11),
(12, 'fish', 12, 70.65, 21, 12, 12, 12),
(13, 'marlboro', 13, 83.80, 50, 13, 13, 13),
(14, 'penicilin', 14, 14.45, 70, 14, 14, 14),
(15, 'shorts', 15, 40.20, 20, 15, 15, 15);
GO

INSERT Supplier (id ,name ,id_adress)
VALUES
(1, 'Supplier1', 2),
(2, 'Supplier2', 4),
(3, 'Supplier3', 6),
(4, 'Supplier4', 8),
(5, 'Supplier5', 10),
(6, 'Supplier6', 12),
(7, 'Supplier7', 14),
(8, 'Supplier8', 16),
(9, 'Supplier9', 18),
(10, 'Supplier10', 20),
(11, 'Supplier11', 22),
(12, 'Supplier12', 24),
(13, 'Supplier13', 26),
(14, 'Supplier14', 28),
(15, 'Supplier15', 30);
GO

INSERT Delivery (id, id_product, id_supplier, price, quantity, date_of_delivery)
VALUES
(1, 1, 1, 20, 3, GETDATE()),
(2, 2, 2, 20, 3, GETDATE()),
(3, 3, 3, 20, 3, GETDATE()),
(4, 4, 4, 20, 3, GETDATE()),
(5, 5, 5, 20, 3, GETDATE()),
(6, 6, 6, 20, 3, GETDATE()),
(7, 7, 7, 20, 3, GETDATE()),
(8, 8, 8, 20, 3, GETDATE()),
(9, 9, 9, 20, 3, GETDATE()),
(10, 10, 10, 20, 3, GETDATE()),
(11, 11, 11, 20, 3, GETDATE()),
(12, 12, 12, 20, 3, GETDATE()),
(13, 13, 13, 20, 3, GETDATE()),
(14, 14, 14, 20, 3, GETDATE()),
(15, 15, 15, 20, 3, GETDATE());
GO

INSERT Sale (id, id_product, price, quantity, date_of_sale)
VALUES
(1, 1, 20, 3, GETDATE()),
(2, 2, 20, 3, GETDATE()),
(3, 3, 20, 3, GETDATE()),
(4, 4, 20, 3, GETDATE()),
(5, 5, 20, 3, GETDATE()),
(6, 6, 20, 3, GETDATE()),
(7, 7, 20, 3, GETDATE()),
(8, 8, 20, 3, GETDATE()),
(9, 9, 20, 3, GETDATE()),
(10, 10, 20, 3, GETDATE()),
(11, 11, 20, 3, GETDATE()),
(12, 12, 20, 3, GETDATE()),
(13, 13, 20, 3, GETDATE()),
(14, 14, 20, 3, GETDATE()),
(15, 15, 20, 3, GETDATE());
GO

/* показать содержимое таблиц */

SELECT * FROM Category 
SELECT * FROM Producer 
SELECT * FROM Measurement 
SELECT * FROM Markup 
SELECT * FROM Product 
SELECT * FROM Country 
SELECT * FROM Region 
SELECT * FROM City 
SELECT * FROM Address 
SELECT * FROM Supplier 
SELECT * FROM Delivery 
SELECT * FROM Sale 