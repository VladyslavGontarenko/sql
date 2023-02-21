/* CREATE TABLE */

CREATE TABLE Genres
(
id int NOT NULL,
name nvarchar(100) NULL
)
GO

CREATE TABLE Stock
(
id int NOT NULL UNIQUE,
percent int NULL
)
GO

CREATE TABLE Authors
(
id int NOT NULL,
name nvarchar(100) NULL
)
GO

CREATE TABLE Publishers
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL
)
GO

CREATE TABLE Books
(
id int NOT NULL,
name nvarchar(100) NULL,
id_genres int NOT NULL,
id_stock int NOT NULL,
id_authors int NOT NULL,
id_publishers int NOT NULL,
price float NULL,
release date NULL DEFAULT GETDATE(),
language nvarchar(100) NULL
)
GO

CREATE TABLE Countries
(
id int NOT NULL UNIQUE,
name nvarchar(100) NULL
)
GO

CREATE TABLE Buyers
(
id int NOT NULL,
name nvarchar(100) NULL
id_countries int NOT NULL,
id_shops int NOT NULL
)
GO

CREATE TABLE Sellers
(
id int NOT NULL,
name nvarchar(100) NULL
id_countries int NOT NULL
)
GO

CREATE TABLE Sales
(
id int NOT NULL,
price float NULL,
id_shops int NOT NULL
)
GO

CREATE TABLE Shops
(
id int NOT NULL,
name nvarchar(100) NULL,
id_sellers int NOT NULL,
id_countries int NOT NULL,
id_books int NOT NULL
)
GO

/* CREATE MoreToMore TABLE */

CREATE TABLE GenresToBooks
(
id_genres int NOT NULL,
id_books int NOT NULL
)
GO

CREATE TABLE AuthorsToBooks
(
id_authors int NOT NULL,
id_books int NOT NULL
)
GO

CREATE TABLE BooksToShops
(
id_books int NOT NULL,
id_shops int NOT NULL
)
GO

CREATE TABLE ShopsToBuyers
(
id_shops int NOT NULL,
id_buyers int NOT NULL
)
GO

CREATE TABLE SellersToShops
(
id_sellers int NOT NULL,
id_shops int NOT NULL
)
GO

CREATE TABLE ShopsToSales
(
id_shops int NOT NULL,
id_sales int NOT NULL
)
GO

/* CONNECTION 1TO1 */

ALTER TABLE Books
ADD
FOREIGN KEY (id_stock) REFERENCES Stock (id)
GO

ALTER TABLE Books
ADD
FOREIGN KEY (id_publishers) REFERENCES Publishers (id)
GO

ALTER TABLE Shops
ADD
FOREIGN KEY (id_countries) REFERENCES Countries (id)
GO

ALTER TABLE Buyers
ADD
FOREIGN KEY (id_countries) REFERENCES Countries (id)
GO

ALTER TABLE Sellers
ADD
FOREIGN KEY (id_countries) REFERENCES Countries (id)
GO

/* CONNECTION MoreToMore */

ALTER TABLE GenresToBooks
ADD
FOREIGN KEY (id_genres) REFERENCES Genres (id)
FOREIGN KEY (id_books) REFERENCES Books (id)
GO

ALTER TABLE AuthorsToBooks
ADD
FOREIGN KEY (id_authors) REFERENCES Authors (id)
FOREIGN KEY (id_books) REFERENCES Books (id)
GO

ALTER TABLE BooksToShops
ADD
FOREIGN KEY (id_books) REFERENCES Books (id)
FOREIGN KEY (id_shops) REFERENCES Shops (id)
GO

ALTER TABLE ShopsToBuyers
ADD
FOREIGN KEY (id_shops) REFERENCES Shops (id)
FOREIGN KEY (id_buyers) REFERENCES Buyers (id)
GO

ALTER TABLE SellersToShops
ADD
FOREIGN KEY (id_sellers) REFERENCES Sellers (id)
FOREIGN KEY (id_shops) REFERENCES Shops (id)
GO

ALTER TABLE ShopsToSales
ADD
FOREIGN KEY (id_shops) REFERENCES Shops (id)
FOREIGN KEY (id_sales) REFERENCES Sales (id)
GO