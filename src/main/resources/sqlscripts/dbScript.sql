DROP TABLE IF EXISTS dbo.Product;
DROP TABLE IF EXISTS dbo.Category;

CREATE TABLE dbo.Category
(
CategoryId INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(255) NOT NULL,
CategoryDescription VARCHAR(255)
);

CREATE TABLE dbo.Product
(
ProductId INT IDENTITY PRIMARY KEY,
CategoryId INT FOREIGN KEY REFERENCES dbo.Category(CategoryId),
ProductName VARCHAR(255) NOT NULL,
ProductDescription VARCHAR(255),
ProductStock INT NOT NULL DEFAULT 0,
ProductPrice DECIMAL(10,2) NOT NULL DEFAULT 0.00
);

SET IDENTITY_INSERT dbo.category ON;
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 1,'Books', 'Paper and hard cover, fiction and non-fiction');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 2,'Computer', 'Desktop, laptops, and accessories');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 3,'Entertainment', 'Home electronicsa, TV, HiFi, etc.');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 4,'Kitchen', 'Kitchen + cooking appliances');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 5,'Laundry', 'Clothes washers, dryers, and accesories');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 6,'Mobile Devices', 'Mobile phones, tablets, and accessories');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 7,'Furniture', 'Home and home office furniture');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 8,'Sport', 'Outdoor sports equipment');
insert into dbo.Category (CategoryId,CategoryName,CategoryDescription) values ( 9,'Food', 'Meat, vegtables and fruit');
SET IDENTITY_INSERT dbo.category OFF;

SET IDENTITY_INSERT dbo.product ON;
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 1,4,'Kettle','Steel Electric Kettle',100,55.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 2,4,'Fridge freezer','Fridge + freezer large',45,799.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 3,2,'Microsoft Surface Laptop 2','8GB ram, 512GB ssd',5,1299.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 4,2,'13 inch Laptop','HP laptop,8GB RAM,250GB SSD',45,799.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 5,6,'Samsung 10inch Tablet','Android6GB ram, 128GB storage, 10inch screen',5,99.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 6,3,'60inch TV','Sony 4K,OLED,Smart TV',12,2799.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 7,5,'Clothes Washing Machine','1600rpm spin,A+++ rated,10KG',50,699.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 8,6,'iPhone XS','128GB',5,850.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 9,1,'Azure Web Apps','Paperback, January 2019, Cloud publishing',50,19.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 10,1,'SQL and No SQL for beginners','Paperback, Oct 2018, Cloud publishing',10,399.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 11,7,'Bed','Super King size,super comfort mattress',5,899.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 12,2,'Learning JavaScript','Become a JavaScript expert in 2 hours!',10,12.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 13,7,'Desk','Small computer desk',5,99.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 14,4,'Esspresso Machine','Shot and Mug, usesground espresso coffee',2,150.66 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 15,2,'Dell Latitude','13.3 inch Laptop, Intel Core i5 CPU, 8GB RAM, 512GB SSD',10,900.00 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 16,2,'No SQL for Beginners','Cloud publishing',11,15.97 );
insert into dbo.Product (ProductId,CategoryId,ProductName,ProductDescription,ProductStock,ProductPrice) values ( 17,7,'Stool','one leg balance stool',5,95.00 );
SET IDENTITY_INSERT dbo.product OFF;