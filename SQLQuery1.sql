CREATE TABLE Category
(
ID int NOT NULL,
Name nvarchar(100) NULL,
)
GO

CREATE TABLE Products
(
ID int NOT NULL,
Name nvarchar(100) NULL,
Price float NULL,
Count int NULL DEFAULT 10,
Made date NULL DEFAULT GETDATE(),
[valid up to] date NULL DEFAULT GETDATE() + 30,
Manufacturer nvarchar(100) NULL,
)
GO

ALTER TABLE Category
ADD
PRIMARY KEY(ID)
GO

ALTER TABLE Products
ADD
FOREIGN KEY (ID) REFERENCES Category (ID)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

INSERT Category (Name, ID)
VALUES
('fruit', 1),
('vegetables', 2),
('berries', 3),
('meat', 4),
('bakery product', 5),
('dairy product', 6),
('drinks', 7);
GO
INSERT Products (Name, Count, Price, Manufacturer, ID)
VALUES
('���������', 10, 62.95, 'Ukraine', 1),
('�������', 10, 10.79, 'Ukraine', 2),
('�����', 10, 69.95, 'Ukraine', 3),
('������ ��������', 10, 13.95, 'Ukraine', 1),
('������ ����', 10, 13.95, 'Ukraine', 1),
('������', 10, 103.95, 'Ukraine', 2),
('��� �������� ����������', 10, 39.95, 'Ukraine', 2),
('�����', 10, 89.95, 'Ukraine', 1),
('�������', 10, 209.95, 'Ukraine', 1),
('��� ��������', 10, 37.39, 'Ukraine', 2),
('�������� �������', 10, 59.95, 'Ukraine', 1),
('������ ������', 10, 14.95, 'Ukraine', 1),
('�������', 10, 23.59, 'Ukraine', 2),
('�������� ���������', 10, 75.89, 'Ukraine', 3),
('�������� �����', 10, 59.95, 'Ukraine', 1),
('������', 10, 10.49, 'Ukraine', 2),
('���������', 10, 7.59, 'Ukraine', 1),
('������ ��� ���', 10, 20.95, 'Ukraine', 1),
('�������� �������', 10, 54.95, 'Ukraine', 1),
('������', 10, 76.89, 'Ukraine', 2),
('������ ��� �����', 10, 18.95, 'Ukraine', 1),
('������ �������', 10, 16.95, 'Ukraine', 1),
('�����', 10, 54.95, 'Ukraine', 1),
('��������� �����', 10, 12.59, 'Ukraine', 2),
('������� ������ ����', 10, 45.90, 'Ukraine', 2),
('�����', 10, 41.95, 'Ukraine', 1),
('���� � �������', 10, 59.90, 'Ukraine', 1),
('���� ������� 10��', 10, 57.90, 'Ukraine', 4),
('����� ����������� ����', 10, 16.30, 'Ukraine', 5),
('���� ��������� ������������', 10, 32.90, 'Ukraine', 5),
('���� �������', 10, 33.90, 'Ukraine', 5),
('���� ��������� �������� ������������', 10, 25.90, 'Ukraine', 5),
('���� � ������ ��������', 10, 145.65, 'Ukraine', 5),
('���� � ������� � �������', 10, 161.99, 'Ukraine', 5),
('����� 180 � ����� ��������������� ������������ 63%', 10, 61.70, 'Ukraine', 6),
('������ 115�, �� �������, ���������� 2%', 10, 11.10, 'Ukraine', 6),
('������ 0,87 �� ������ ��������� 2,5%', 10, 35.70, 'Ukraine', 6),
('��� ��������� 70 � ������ ������ ��������� 38%', 10, 18.30, 'Ukraine', 6),
('��� ������������� 100 � ���������� ��� ĳ��� 4,5% �/������', 10, 13.90, 'Ukraine', 6),
('������� 350 � ������������� 15%', 10, 33.60, 'Ukraine', 6),
('����� 180 � ��������� �����������-��������� ��������� 62,5%', 10, 37.90, 'Ukraine', 6),
('������� 2 � ������ ������������', 10, 38.30, 'Ukraine', 7),
('������� 1,5 � Coca-Cola ������o�o����� �����o�����o������', 10, 35.30, 'Ukraine', 7),
('���� 2 � ���������� ��������� �����������������', 10, 18.70, 'Ukraine', 7),
('���� 6 � ���������� ���������� ��������������', 10, 41.90, 'Ukraine', 7),
('�a����� 1 � Pepsi �e�a��o�o����� �����o�a����������', 10, 27.20, 'Ukraine', 7),
('�a�� 1 � Coca-Cola Zero �e�a��o�o����� �����o�a�o�a��� ���', 10, 28.90, 'Ukraine', 7),
('�a����� 0,5 � Pepsi �e�a��o�o����� �����o�a����������', 10, 18.40, 'Ukraine', 7),
('�a�� 250 �� Hell Ice Cool �������-�������� �������������� ������������ ��������������� �/�', 10, 19.30, 'Ukraine', 7),
('���� 250 �� Burn ������������ �/�', 10, 33.90, 'Ukraine', 7);
GO

SELECT * FROM Category
SELECT * FROM Products

SELECT ID, Name, Price, Count, Made, [valid up to], Manufacturer  From Products
WHERE Name = '�*'
GO