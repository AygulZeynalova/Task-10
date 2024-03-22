create database Library;

create table [dbo].[Books] (
[Id] int primary key identity(1,1),
[Name] nvarchar(100),
[Author] nvarchar(100),
[Genre] nvarchar(100),
[Price] decimal(10,2),
[PageCount] int,
[Published] datetime,
[CreatedDate] datetime default getdate()
)
INSERT INTO [dbo].[Books] ([Name],[Author],[Genre],[Price],[PageCount],[Published])
VALUES ('Divine Comedy','Dante Alighieri','Epic Poetry',10.99,500,1308-01-01),
('The Art of War','Sun Tzu','Strategy',9.99,100,0000-00-00),
('1984','George Orwell','Dystopian fiction',11.99,328,1949-06-08),
('The White Guard','Chingiz Abdullayev','Thriller',14.99,400,1994-01-01),
('Wolf Messing','Chingiz Abdullayev','Mystery',13.50,350,1994-01-01);

SELECT [Name],[Price]
FROM [dbo].Books
ORDER BY Price desc;

--Top 3 most cheapest
SELECT TOP 3 [Name],[Price]
FROM [dbo].Books
ORDER BY Price;

SELECT [Name],[Genre],[Price],[PageCount],[Published]
FROM [dbo].Books
WHERE Author='Chingiz Abdullayev';

DELETE FROM [dbo].Books
WHERE Price>10;

TRUNCATE TABLE [dbo].[Books]

