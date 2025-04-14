Functions :
	Function is block of code / sql statement that we can reuse in multiple files.
	Function can be reusable across the same DB name where function is created.
	We can identify the function using '()' braces at the end of function name.
		Ex. Getdate()
	
	Types of functions :
		1. System defined function (SDF) :
			System defined functions are created by system when we are installing SQL server.
			1. Aggregate function :
				Aggregate function perform mathemetical operations.

				Types Aggregate function :
					-- sum() :
						Sum function returning total addition of the column value.

						-- Syntax :
							Select Sum(columnname) from tbl_Name

						-- Example :
							Select * from tbl_OrderMaster

							Select sum(Order_Amt) as TotalAmount 
							from tbl_OrderMaster

					-- min() :
						Minimum return minimum value from the column.

						-- Syntax :	
							Select min(columnName) from tbl_Name

						-- Example :
							Select * from tbl_OrderMaster

							Select min(order_amt) from tbl_OrderMaster

							select * from tbl_Employee

							Select min(Employee_Name) from tbl_Employee

					-- max() :
						Max function return maximum value from column.

						-- Syntax :
							Select max(columnName) from tbl_Name

						-- Example :
							Select * from tbl_OrderMaster

							Select max(order_amt) from tbl_OrderMaster

							select * from tbl_Employee

							Select max(Employee_Name) from tbl_Employee
					-- avg() :
						avg function  return average value for that column.

						-- Syntax :
							Select avg(columnName) from tbl_Name

						-- Example :
							Select * from tbl_OrderMaster

							Select avg(order_amt) from tbl_OrderMaster

							select * from tbl_Employee

							Select avg(Employee_Name) from tbl_Employee

					-- count() :
						Return number of rows count based on column value.

						-- Syntax :
							Select count(*) from tbl_name

							Select count(columnName) from tbl_Name

						-- Example :
							Select * from tbl_OrderMaster

							Select count(*) from tbl_OrderMaster

							Select count(order_amt) from tbl_OrderMaster

							select * from tbl_Employee

							Select count(Employee_Name) from tbl_Employee
					


			2. String function
			3. Date function

		2. User defined function (UDF)