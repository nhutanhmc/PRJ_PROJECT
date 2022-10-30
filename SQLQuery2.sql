USE UserManagement
GO
CREATE TABLE tblProduct(
	productID int not null primary key,
	name nvarchar(50) not null,
	price float not null,
	quantity  int not null
)
GO
INSERT INTO tblProduct(productID,name,price,quantity)
VALUES()