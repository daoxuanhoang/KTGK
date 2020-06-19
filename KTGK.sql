Create database KTGK
go
Create table Category(
	id int primary key identity(1,1),
	name nvarchar(100),
	note nvarchar(MAX)
)

Create table Product(
	id int primary key identity(1,1),
	code nvarchar(100),
	name nvarchar(100),
	sort_name nvarchar(100),
	note nvarchar(100),
	category_id int,
	FOREIGN KEY (category_id) REFERENCES Category(id)
)