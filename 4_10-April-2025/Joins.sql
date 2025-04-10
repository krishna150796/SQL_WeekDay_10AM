Joins :
	Joins is used to get data from one or multiple table as a single output.
	We can apply join for Select statement, Insert with Select statement, Update statement.

	-- Types of joins :
		Inner join :
			Inner join return a common data from one or multiple table.
			We can use n number of join in single SQL statement.

			-- Syntax :
				Select * from tbl_A
				Inner join tbl_B
					on tbl_A.columnName = tbl_B.columnName

			-- Example :
				use ECommerce_DB				

				Select * from tbl_SubcategoryMaster
				Select * from tbl_OrderMaster

				Select * from tbl_SubcategoryMaster
				Inner join tbl_OrderMaster
					on tbl_SubcategoryMaster.Subcategory_Id = tbl_OrderMaster.Subcategory_Id

				Select * from tbl_SubcategoryMaster
				Select * from tbl_OrderMaster

				Select tbl_SubcategoryMaster.Subcategory_Id,
					tbl_OrderMaster.Subcategory_Id,
					tbl_SubcategoryMaster.Subcategory_Name,
					tbl_OrderMaster.Order_Date
				from 
					tbl_SubcategoryMaster
				Inner join tbl_OrderMaster
					on tbl_SubcategoryMaster.Subcategory_Id = 
						tbl_OrderMaster.Subcategory_Id

				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.Order_Date
				from tbl_SubcategoryMaster as SM
				Inner join tbl_OrderMaster as OM
					on SM.Subcategory_Id = OM.Subcategory_Id

		Right join (Right outer join) :
			Right join is return all data from right table and matching data from both table.
			i.e. We have Table A And Table B
				Select * from Table A Inner join Table B on Table A.Column = Table B.Column

				In above statement "Table A" is consider as Left Table and "Table B" 
					is consider as right table.

			-- Syntax :
				Select * from tbl_A
				Right join tbl_B on
					tbl_A.ColumnName = tbl_B.ColumnName

			-- Example :
				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.Order_Date,
				Om.Order_Id
				from 
					tbl_SubcategoryMaster as SM
				Right Join 
					tbl_OrderMaster as OM on
						SM.Subcategory_Id = OM.Subcategory_Id

				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.
				Order_Date,Om.Order_Id
				from 
					tbl_OrderMaster as OM 
				Right Join 
					tbl_SubcategoryMaster as SM On
						SM.Subcategory_Id = OM.Subcategory_Id
				
				Select * from tbl_SubcategoryMaster
				Select * from tbl_OrderMaster
				
				--Insert into tbl_OrderMaster(Subcategory_Id,Order_Date,Order_Qty)
				--values(7,GETDATE(),50)
				
				Select * from tbl_Employee

				Select A2.Employee_Name, A2.Employee_Salary ,
					A1.Employee_Name as Manager_Name,A1.Employee_Salary as manager_Salary
				from 
					tbl_Employee as A1
				Right join 
					tbl_Employee as A2
				on 
					A2.Manager_Id = A1.Employee_Id

		Left join (Left outer join)
		Cross join
		Self join



--CREATE TABLE Tbl_Employee
--(
--	Employee_id INT PRIMARY KEY IDENTITY(1,1),
--	Employee_Name VARCHAR(20),
--	Employee_Salary INT,
--	Manager_Id INT
--)

--select * from Tbl_Employee;

--insert into Tbl_Employee (Employee_Name,Employee_Salary,Manager_Id)
--values ('A',20000,3),
--		('B',30000,null),
--		('c',40000,2);