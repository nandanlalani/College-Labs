-- Create the Products table
CREATE TABLE Products (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);
-- Insert data into the Products table
INSERT INTO Products (Product_id, Product_Name, Price) VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);
drop table Products
drop table NewProducts
drop table ArchivedProducts
select *from Products
--Part - A



--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Product_Cursor CURSOR
for select * from Products

open Product_Cursor

fetch next from Product_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		print cast(@pid as varchar) + ' ' + @pname + ' ' + cast(@pri as varchar);

		fetch next from Product_Cursor into @pid,@pname,@pri
	end

	close Product_Cursor

deallocate Product_Cursor

--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.
--(Example: 1_Smartphone)
declare @pid int,@pname varchar(50);
declare Product_Cursor_Fetch cursor
for select Product_id,Product_Name from Products

open Product_Cursor_Fetch

fetch next from Product_Cursor_Fetch into @pid,@pname

while @@FETCH_STATUS = 0
	begin
		print cast(@pid as varchar) + '_' + @pname;

		fetch next from Product_Cursor_Fetch into @pid,@pname
	end
close Product_Cursor_Fetch

deallocate Product_Cursor_Fetch


--3. Create a Cursor to Find and Display Products Above Price 50,000.
Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Find_Cursor CURSOR
for select * from Products
	where Price>50000

open Find_Cursor

fetch next from Find_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		print cast(@pid as varchar) + ' ' + @pname + ' ' + cast(@pri as varchar);

		fetch next from Find_Cursor into @pid,@pname,@pri
	end

close Find_Cursor

deallocate Find_Cursor

--4. Create a cursor Product_CursorDelete that deletes all the data from the Products table.
declare @pid int;
declare Delete_Cursor cursor
for select Product_id from Products

open Delete_Cursor

fetch next from delete_Cursor into @pid

while @@FETCH_STATUS = 0
	begin
		delete from Products where Product_id = @pid

		fetch next from Delete_Cursor into @pid
	end
close Delete_Cursor

deallocate Delete_Cursor

select * from Products

--Part – B



--5. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases
--the price by 10%.
Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Product_Cursor CURSOR
for select * from Products

open Product_Cursor

fetch next from Product_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		update Products
		set Price = @pri+(0.1*@pri) where Product_id = @pid;

		print cast(@pid as varchar) + ' ' + @pname + ' ' + cast(@pri as varchar);

		fetch next from Product_Cursor into @pid,@pname,@pri
	end

	close Product_Cursor

deallocate Product_Cursor

select * from Products

--6. Create a Cursor to Rounds the price of each product to the nearest whole number.
Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Product_Cursor CURSOR
for select * from Products

open Product_Cursor

fetch next from Product_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		update Products set Price = ROUND(@pri,1) where Product_id = @pid

		print cast(@pid as varchar) + ' ' + @pname + ' ' + cast(@pri as varchar);

		fetch next from Product_Cursor into @pid,@pname,@pri
	end

	close Product_Cursor

deallocate Product_Cursor

select * from Products

--Part – C
CREATE TABLE NewProducts (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);


--7. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop”
--(Note: Create NewProducts table first with same fields as Products table)
Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Product_Cursor CURSOR
for select * from Products
	where Product_Name = 'Laptop'

open Product_Cursor

fetch next from Product_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		Insert into NewProducts values(@pid,@pname,@pri)

		fetch next from Product_Cursor into @pid,@pname,@pri
	end

	close Product_Cursor

deallocate Product_Cursor

select *from NewProducts

--8. Create a Cursor to Archive High-Price Products in a New Table (ArchivedProducts), Moves products
--with a price above 50000 to an archive table, removing them from the original Products table.CREATE TABLE ArchivedProducts (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);Declare @pid int, @pname varchar(50),@pri decimal(10,2);

declare Pro_Cursor CURSOR
for select * from Products
	where Price > 50000

open Pro_Cursor

fetch next from Pro_Cursor into @pid,@pname,@pri

while @@FETCH_STATUS = 0
	begin
		Insert into ArchivedProducts values(@pid,@pname,@pri)
		delete from Products where Product_id = @pid
		fetch next from Pro_Cursor into @pid,@pname,@pri
	end

	close Pro_Cursor

deallocate Pro_Cursor

select * from Products
select * from ArchivedProducts
select * from NewProducts