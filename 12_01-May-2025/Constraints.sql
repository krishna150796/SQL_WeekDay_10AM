Constarint :
	When we need to implement policy / rule on the table then we can use constraints.

	Types of constraints :
		Primary Key (PK) :
			Primary key make sure that our column data is not null and must be unique.
			We can create only one PK per table.
			PK name can not be duplicate across the DB.
			Ex : pk_EmployeeId

			-- Syntax :
				-- Create new table
					Create table tbl_Name
					(
						column_name datatype primary key,
						column_name datatype,
						column_name datatype
					)

				-- Add primary key in existing table
					Alter table tbl_Name
					Add constraint cn_Name primary key (column_name)

				-- Drop Constraint
					Alter table tbl_Name
					Drop constraint cn_Name

			-- Example :
				Create table tbl_A
				(
					A_Id int primary key,
					A_Name varchar (20),
					A_Address varchar(50)
				)

				-- Drop constraint
				Alter table tbl_A
				Drop constraint PK__tbl_A__71AC6DA16D604309

				-- Add PK in existing table
				Alter table tbl_A
				Add constraint pk_AId primary key(A_Id)		
				

		Foreign Key (FK) : 
			FK is a primary key of parent table and references to the child table.
			FK can be null.
			We can create multiple FK in a single table.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype,
					column_name datatype,
					--- Add FK constraint
					constraint cn_name foreign key (refrece_column)
						references parent_table(pk_columnName)
				)

				-- Add FK in existing table
				Alter table tbl_Name
				Add constraint cn_name foreign key(reference_column)
					references parent_table(Pk_columnName)

				-- Drop FK
				Alter table tbl_Name
				Drop constraint cn_Name


				-- Example :
					create table tbl_B
					(
						B_ID int primary key,
						A_ID int,
						B_Name varchar(150),
						constraint fk_AId foreign key (A_Id) references tbl_A(A_Id)
					)

					-- Drop FK
					Alter table tbl_B
					drop constraint fk_AId

					-- Add Fk in existing table
					Alter table tbl_B
					Add constraint fk_AId foreign key (A_Id) references tbl_A(A_Id)

					-- Example :
						Select * from tbl_A
						Select * from tbl_B

						Insert into tbl_A(A_Id,A_Name,A_Address)
						values(1,'abc','baroda')

						Insert into tbl_B(B_Id,A_Id,B_Name)
						values(1,1,'B_Table')

						Insert into tbl_A(A_Id,A_Name,A_Address)
						values(2,'abc','baroda')

						Insert into tbl_B(B_Id,A_Id,B_Name)
						values(2,2,'A_Table')

						-- Delete record
						Delete from tbl_B where B_Id = 2

						Delete from tbl_A where A_Id = 2

		default :
			default value is used to store data when user left the field blank.
			When user enter any detail for default column then first priority is assigned to
				user value.
			If user is not enter any value then default value is consider as value for that column.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype default 'value',
					column_name datatype
				)

				-- Add default value in existing table column
				Alter table tbl_name
				Add constraint cn_name default 'value' for column_name

			-- Example :
				-- Add default constraint in existing column
				Alter table tbl_A
				Add constraint cn_DefaultName default 'Unknown' for A_Name

				Select * from tbl_A

				Insert into tbl_A(A_Id,A_Name,A_Address)
				values(3,'xyz','Ahmedabad')

				Insert into tbl_A(A_Id,A_Address)
				values(4,'Ahmedabad')

				Insert into tbl_A(A_Id,A_Address)
				values(5,'Ahmd')

				update tbl_A set A_Address = 'Ahmedabad' where A_Id = 5

		check:
			When we need to add data based on condition then we can use check constraint.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype check (condition),
					column_name datatype
				)

				-- For existing table.
				Alter table tbl_Name
				Add constraint cn_name check (condition)

			-- Example :
				Alter table tbl_A
				Add constraint cn_AddressLength check(len(A_Address) > 5)

				Alter table tbl_A
				drop constraint cn_AddressLength

				Insert into tbl_A(A_Id,A_Name,A_Address)
				values(6,'A','abc')

				Update tbl_A set A_Address = 'ahmd' where A_Id = 5

		unique :
			Unique constraint is used to save unique data for the column.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype unique,
					column_name datatype
				)

				-- For existing table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				Select * from tbl_A

				Alter table tbl_A
				Add constraint cn_uniqueAddress unique(A_Address)

				Update tbl_A Set A_Address = 'Rajkot' where A_Id = 1
				Update tbl_A Set A_Address = 'Haryana' where A_Id = 4
				Update tbl_A Set A_Address = 'Mumbai' where A_Id = 5
				
				Insert into tbl_A(A_Id,A_Name,A_Address)
					Values (6,'Def','mumbai');
