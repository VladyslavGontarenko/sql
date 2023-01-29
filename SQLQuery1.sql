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
('Грейпфрут', 10, 62.95, 'Ukraine', 1),
('Капуста', 10, 10.79, 'Ukraine', 2),
('Банан', 10, 69.95, 'Ukraine', 3),
('Яблоко Сортовое', 10, 13.95, 'Ukraine', 1),
('Яблоко Гала', 10, 13.95, 'Ukraine', 1),
('Чеснок', 10, 103.95, 'Ukraine', 2),
('Лук Репчатый Фасованный', 10, 39.95, 'Ukraine', 2),
('Свити', 10, 89.95, 'Ukraine', 1),
('Авокадо', 10, 209.95, 'Ukraine', 1),
('Лук Репчатый', 10, 37.39, 'Ukraine', 2),
('Мандарин Муркотт', 10, 59.95, 'Ukraine', 1),
('Яблоко Голден', 10, 14.95, 'Ukraine', 1),
('Морковь', 10, 23.59, 'Ukraine', 2),
('Помидоры Тепличные', 10, 75.89, 'Ukraine', 3),
('Мандарин Новая', 10, 59.95, 'Ukraine', 1),
('Свекла', 10, 10.49, 'Ukraine', 2),
('Картофель', 10, 7.59, 'Ukraine', 1),
('Яблоко Ред Чиф', 10, 20.95, 'Ukraine', 1),
('Апельсин Весовой', 10, 54.95, 'Ukraine', 1),
('Огурцы', 10, 76.89, 'Ukraine', 2),
('Яблоко Ред Принц', 10, 18.95, 'Ukraine', 1),
('Яблоко Чемпион', 10, 16.95, 'Ukraine', 1),
('Лимон', 10, 54.95, 'Ukraine', 1),
('Картофель Сетка', 10, 12.59, 'Ukraine', 2),
('Морковь Высший Сорт', 10, 45.90, 'Ukraine', 2),
('Груша', 10, 41.95, 'Ukraine', 1),
('Киви В Корзине', 10, 59.90, 'Ukraine', 1),
('Яйцо Куриное 10шт', 10, 57.90, 'Ukraine', 4),
('Багет Французский Мини', 10, 16.30, 'Ukraine', 5),
('Хлеб Пшеничный Бездрожжевой', 10, 32.90, 'Ukraine', 5),
('Хлеб Финский', 10, 33.90, 'Ukraine', 5),
('Хлеб Лбвовский Заварной Классический', 10, 25.90, 'Ukraine', 5),
('Мини С Мясной Начинкой', 10, 145.65, 'Ukraine', 5),
('Мини С Курицей И Грибами', 10, 161.99, 'Ukraine', 5),
('Масло 180 г Ферма Сладкосливочное Бутербродное 63%', 10, 61.70, 'Ukraine', 6),
('Йогурт 115г, ТМ Растішка, Клубничный 2%', 10, 11.10, 'Ukraine', 6),
('Молоко 0,87 кг Молокія Сказочное 2,5%', 10, 35.70, 'Ukraine', 6),
('Сыр Плавленый 70 г Весела Корівка Сливочный 38%', 10, 18.30, 'Ukraine', 6),
('Сир Кисломолочний 100 г Яготинське Для Дітей 4,5% п/стакан', 10, 13.90, 'Ukraine', 6),
('Сметана 350 г Простоквашино 15%', 10, 33.60, 'Ukraine', 6),
('Смесь 180 г Тульчинка Растительно-Сливочная Несоленая 62,5%', 10, 37.90, 'Ukraine', 6),
('Напиток 2 л Живчик Газированный', 10, 38.30, 'Ukraine', 7),
('Напиток 1,5 л Coca-Cola Безалкoгoльный Сильнoгазирoванный', 10, 35.30, 'Ukraine', 7),
('Вода 2 л Карпатська Джерельна Слабогазированная', 10, 18.70, 'Ukraine', 7),
('Вода 6 л Карпатская Родниковая Негазированная', 10, 41.90, 'Ukraine', 7),
('Нaпиток 1 л Pepsi Бeзaлкoгoльный Сильнoгaзированный', 10, 27.20, 'Ukraine', 7),
('Нaпій 1 л Coca-Cola Zero Бeзaлкoгoльний Сильнoгaзoвaний ПЕТ', 10, 28.90, 'Ukraine', 7),
('Нaпиток 0,5 л Pepsi Бeзaлкoгoльный Сильнoгaзированный', 10, 18.40, 'Ukraine', 7),
('Нaпій 250 мл Hell Ice Cool Імбирно-Лимонний Безалкогольний Енергетичний Сильногазований ж/б', 10, 19.30, 'Ukraine', 7),
('Напій 250 мл Burn Енергетичний з/б', 10, 33.90, 'Ukraine', 7);
GO

SELECT * FROM Category
SELECT * FROM Products

SELECT ID, Name, Price, Count, Made, [valid up to], Manufacturer  From Products
WHERE Name = 'К*'
GO