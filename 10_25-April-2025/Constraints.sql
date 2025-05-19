Primary Key :
	One type of constraint
	PK is used o insert a unique value in column.
	PK does not allow null value.
	We can not create multiple primary key in the same table.
	PK is applicable on number type of column with not null.

	-- Syntax :
		-- When we creat new table.
		Create table tbl_Name
		(
			column_name datatype primary key,
			column_name datatype,
			...
			column_name datatype
		)

		-- Existing table
		Alter table tbl_Name
		Add constraint constraint_name primary key (column_name)

		-- Drop existing key
		Alter table tbl_Name
		drop constraint constraint_name

		-- COmposite key
		create table tbl_name
		(
			column_name datatype,
			column_name datatype,
			...
			column_name datatype,
			primary key (column1,column2..columnN)
		)

	-- Example :
		Create table tbl_Eployee
		(
			Employee_Id int primary key,
			Employee_Name nvarchar(50),
			Employee_Age int
		)

		-- Composite key
		Create table tbl_Eployee2
		(
			Employee_Id int,
			Employee_Name nvarchar(50),
			Employee_Age int
			primary key (Employee_Id,Employee_Name)
		)		

		-- Drop constraint (Primary Key)
		Alter table tbl_Eployee
		Drop constraint PK__tbl_Eplo__781134A1D6E9CB94

		-- Existing table 
		Alter table tbl_Eployee
		Add constraint PK_EmployeeId primary key (Employee_Id)


		Create table tbl_Eployee1
		(
			Employee_Id int,
			Employee_Name nvarchar(50),
			Employee_Age int
		)

		alter table tbl_Eployee1
		Alter column Employee_Id int not null

		Alter table tbl_Eployee1
		Add constraint PK_EmployeeId primary key (Employee_Id)

	Foreign Key :
	-- Syntax :
		Create table tbl_NameA
		(
			column_nameA1 datatype primary key.
			column_nameA2 datatype
		)

		Create table tbl_nameB
		(
			column_nameB1 datatype primary key,
			column_nameA1 datatype,
			column_nameB2 datatype,
			Foreign key (column_nameA1) references tbl_NameA(column_nameA1)
		)

		Alter table tbl_nameB
		Add constraint constraint_name
		Foreign key (column_nameA1) references tbl_NameA(column_nameA1)

		-- Drop constraint
		Alter table tbl_nameB
		drop constraint constraint_name
		