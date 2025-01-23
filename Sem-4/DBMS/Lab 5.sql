-- Creating PersonInfo Table
CREATE TABLE PersonInfo (
 PersonID INT PRIMARY KEY,
 PersonName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8,2) NOT NULL,
 JoiningDate DATETIME NULL,
 City VARCHAR(100) NOT NULL,
 Age INT NULL,
 BirthDate DATETIME NOT NULL
);
-- Creating PersonLog Table
CREATE TABLE PersonLog (
 PLogID INT PRIMARY KEY IDENTITY(1,1),
 PersonID INT NOT NULL,
 PersonName VARCHAR(250) NOT NULL,
 Operation VARCHAR(50) NOT NULL,
 UpdateDate DATETIME NOT NULL,
);



drop table PersonInfo
drop table PersonLog
drop trigger t_12




--Part – A


--1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table to display
--a message “Record is Affected.”
create trigger t_1
ON PersonInfo
after insert,update,delete
as begin
	print('Record is Affected.');
End

insert into PersonInfo values (301,'Nandan',25000,GETDATE(),'Rajkot',20,'2005-05-26')

--2. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table. For that,
--log all operations performed on the person table into PersonLog.
create trigger t_2
on PersonInfo
after insert
as begin
	declare @personId int;
	select @personId = PersonID from inserted;
	declare @personName varchar(100);
	select @personName = PersonName from inserted;
	
	
	insert into PersonLog
	values
	(@personId,@personName,'Inserted',GETDATE())
end

create trigger t_3
on PersonInfo
after delete
as begin
	declare @personId int;
	select @personId = PersonID from deleted;
	declare @personName varchar(100);
	select @personName = PersonName from deleted;
	
	
	insert into PersonLog
	values
	(@personId,@personName,'Delete',GETDATE())
end


create trigger t_4
on PersonInfo
after Update
as begin
	declare @personId int;
	select @personId = PersonID from inserted;
	declare @personName varchar(100);
	select @personName = PersonName from inserted;
	
	
	insert into PersonLog
	values
	(@personId,@personName,'Updated',GETDATE())
end


insert into PersonInfo(PersonID,PersonName,Salary,City,BirthDate) values (108,'Dhaval',25000,'Rajkot','2005-05-26')

update PersonInfo
set PersonName = 'Rag'
where PersonID = 101

delete from PersonInfo
where PersonID = 102

select *from PersonLog
select *from PersonInfo

--3. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo
--table. For that, log all operations performed on the person table into PersonLog.

	create trigger t_6
	on PersonInfo
	instead of insert
	as begin
		declare @personId int;
		select @personId = PersonID from inserted;
		declare @personName varchar(100);
		select @personName = PersonName from inserted;
	
	
		insert into PersonLog
		values
		(@personId,@personName,'Inserted',GETDATE())
	end

	create trigger t_7
	on PersonInfo
	instead of delete
	as begin
		declare @personId int;
		select @personId = PersonID from deleted;
		declare @personName varchar(100);
		select @personName = PersonName from deleted;
	
	
		insert into PersonLog
		values
		(@personId,@personName,'Delete',GETDATE())
	end


	create trigger t_8
	on PersonInfo
	instead of Update
	as begin
		declare @personId int;
		select @personId = PersonID from inserted;
		declare @personName varchar(100);
		select @personName = PersonName from inserted;
	
	
		insert into PersonLog
		values
		(@personId,@personName,'Updated',GETDATE())
	end

--4. Create a trigger that fires on INSERT operation on the PersonInfo table to convert person name into
--uppercase whenever the record is inserted.

	create trigger t_9
	on PersonInfo
	after insert
	as begin
		Declare @personID int
		select @personID = PersonID from inserted
		Declare @personName varchar(100)
		select @personName = PersonName from inserted

		update PersonInfo
		set PersonName = UPPER(@personName)
		where PersonID = @personID
	end


--5. Create trigger that prevent duplicate entries of person name on PersonInfo table.
	create trigger t_10
	on PersonInfo
	instead of insert
	as begin
		insert into PersonInfo(PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
		select
			PersonID,
			PersonName,
			Salary,
			JoiningDate,
			City,
			Age,
			BirthDate
		from inserted
		where PersonName not in (select PersonName from PersonInfo)
	end

drop trigger t_11
--6. Create trigger that prevent Age below 18 years.

	create trigger t_11
	on PersonInfo
	instead of insert
	as begin
		insert into PersonInfo(PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
		select
			PersonID,
			PersonName,
			Salary,
			JoiningDate,
			City,
			Age,
			BirthDate
		from inserted
		where Age >=18
	end





--Part – B
--7. Create a trigger that fires on INSERT operation on person table, which calculates the age and update
--that age in Person table.

	create or alter trigger t_12
	on PersonInfo
	after insert
	as begin
		declare @dob datetime
		declare @PID int
		select @PID = PersonID from inserted
		select @dob = BirthDate from inserted
		update PersonInfo set Age = DATEDIFF(year,@dob,GETDATE())
		where PersonID = @PID
	end

	select *from PersonInfo
	select *from PersonLog


--8. Create a Trigger to Limit Salary Decrease by a 10%.

create or alter trigger t_13
on PersonInfo
instead of update
as begin
	declare @asal decimal(8,2)
	declare @PID int
	select @PID = PersonID from inserted
	declare @usal decimal(8,2)
	select @usal = Salary from inserted
	select @asal = Salary from PersonInfo where PersonID = @PID
	print(@usal)
	print(@asal)
	if((@asal-@usal)<=(0.1*@asal))
	begin
		update PersonInfo set Salary = @usal
		where PersonID = @PID
	end
end
	
update PersonInfo set Salary = 20000
where PersonID = 104

select * from PersonInfo




--Part – C
--9. Create Trigger to Automatically Update JoiningDate to Current Date on INSERT if JoiningDate is NULL
--during an INSERT.

create or alter trigger t_14
on PersonInfo
after insert
as begin
	declare @jDate datetime
	select @jDate = JoiningDate from inserted
	declare @PID int
	select @PID = PersonID from inserted
	if @jDate is null
	begin
		update PersonInfo set JoiningDate = GETDATE()
		where PersonID = @PID
	end
end


--10. Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints
--‘Record deleted successfully from PersonLog’.
create or alter trigger t_15
on PersonLog
after delete
as begin
	print'Record deleted successfully from PersonLog'
end

delete from PersonLog where PersonID = 201