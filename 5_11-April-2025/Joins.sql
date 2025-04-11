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

		Left join (Left outer join) :
			Left join return all the data from Left table and matching data from 
				right table.
			i.e. We have Table A And Table B
				Select * from Table A Inner join Table B on Table A.Column = Table B.Column

				In above statement "Table A" is consider as Left Table and "Table B" 
					is consider as right table.

			-- Syntax :
				Select * from tbl_A	
				Left join tbl_B on tbl_A.column = tbl_B.column

			-- Example :
				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.
				Order_Date,Om.Order_Id
				from 
					tbl_OrderMaster as OM 
				Right Join 
					tbl_SubcategoryMaster as SM On
						SM.Subcategory_Id = OM.Subcategory_Id

				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.
				Order_Date,Om.Order_Id
				from 
					tbl_OrderMaster as OM 
				Left Join 
					tbl_SubcategoryMaster as SM On
						SM.Subcategory_Id = OM.Subcategory_Id

				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.
				Order_Date,Om.Order_Id
				from 
					tbl_SubcategoryMaster as SM
				Left Join 
					tbl_OrderMaster as OM On
						SM.Subcategory_Id = OM.Subcategory_Id


		Cross join :
			Cross join follow one to many relationship.

			-- Syntax :
				Select * from tbl_A 
				cross join tbl_B
				where tbl_A.column = tbl_B.column

			-- Example :
				Select * from tbl_CategoryMaster
				Select * from tbl_SubcategoryMaster

				Select tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Name
				from tbl_CategoryMaster
				cross join tbl_SubcategoryMaster
				where tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id

				Select tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Name
				from tbl_CategoryMaster
				cross join tbl_SubcategoryMaster
				where tbl_CategoryMaster.Category_Id in (1,2) And
				tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id

				Select tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Name
				from 
					tbl_CategoryMaster
				Inner join 
					tbl_SubcategoryMaster
				on tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id
				where tbl_CategoryMaster.Category_Id = 1

		Self join :
			Self join is used to join a same table.
			Alias name is mandatory for table.
			
			-- Syntax :
				Select * from tbl_A as A1,tbl_A A2
				where A1.columnName = A2.columnName

			-- Example :
				Select * from Tbl_Employee

				Select 
				a1.Employee_Name,a2.Employee_Name as MANAGER_NAME ,
				a1.Employee_Salary as MANAGER_salary,
				a2.Employee_Name as MANAGER_NAME 
				from Tbl_Employee as a1 ,Tbl_Employee as a2 
				where a1.Manager_Id= a2.Employee_id 

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