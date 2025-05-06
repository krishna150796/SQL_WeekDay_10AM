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

		default
		not null
		null
		check
		unique