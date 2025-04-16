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

			2. String function :
				String function is used to manipulate string data.

				-- Types of string functions :
					char() :
						we wil use when we need to replace special char into string.

						-- Syntax :
							Select char(number) from tbl_Name
							
						-- Example :
							Select char(97), char(65)

					len() :
						To identify the length of string.

						-- Syntax :
							Select len(string_value) from tbl_name

						-- Example :
							Select len('Hello World')
							
							Select len('Hello ')

							Select len(' Hello')

							Select Reg_FirstName,Len(Reg_FirstName) as FirstName ,
								Reg_LastName,Len(Reg_LastName) as LastName
							from tbl_RegisterUser

					trim():
						Remove whitespace from left and right side of the string.
						Ex.
							'    Hello World   '
							Here, Before 'hello' is consider as a white space at the left side
								and after 'world' space is consider as right side white space

						-- Syntax :
							Select trim(string_value) from tbl_Name

						-- Example :
							Select '  Hello   '--  Hello   

							Select trim('  Hello   ') --Hello

							Select * from tbl_RegisterUser

							insert into tbl_RegisterUser(Register_Id,Reg_FirstName,Reg_MiddleName,Reg_LastName)
							Values (3,'  HELLO  ','   INDIA', 'BHARAT  ')

							Select * from tbl_RegisterUser
							--  HELLO  -- Whitespace both side
							--   INDIA -- Whitespace left side
							--BHARAT  -- Whitespace right side

							Select Reg_FirstName,Reg_MiddleName,Reg_LastName,
							trim(Reg_FirstName), trim(Reg_MiddleName),trim(Reg_LastName)
							from tbl_RegisterUser

					rtrim() :
						Remove whitespace from right side of the string.

						-- Syntax :
							Select rtrim(string_Value) from tbl_name

						-- Example :
							Select '  Hello   '  Hello      

							Select rtrim('  Hello   ') --  Hello

							Select Reg_FirstName,Reg_MiddleName,Reg_LastName,
							rtrim(Reg_FirstName), rtrim(Reg_MiddleName),rtrim(Reg_LastName)
							from tbl_RegisterUser
								-- O/P :
									  HELLO
									  BHARAT


					ltrim() :
						Remove whitespace from left side of the string.

						-- Syntax :
							Select ltrim(string_Value) from tbl_name

						-- Example :
							Select '  Hello   '  Hello      

							Select ltrim('  Hello   ') --Hello   

							Select Reg_FirstName,Reg_MiddleName,Reg_LastName,
							ltrim(Reg_FirstName), ltrim(Reg_MiddleName),ltrim(Reg_LastName)
							from tbl_RegisterUser

							Select * from tbl_RegisterUser
							where trim(Reg_FirstName) like ('H%')

					concat() :
						Join two or more words into single string is called as concatenation.
						every word i written with comma seperated.

						-- Syntax :
							Select concat(value1,value2,...valueN)

						-- Example :
							Select concat('Hello','World') -- HelloWorld
							Select concat('Hello ','World')
							Select concat('Hello',' World')
							Select concat('Hello',' ','World')

							Select 
								concat(Reg_FirstName,' ' ,Reg_MiddleName,' ',Reg_LastName) as FullName
							from tbl_RegisterUser

					concat + :
						Use to merge words and return as a single string with plus sign.

						-- Synatx :
							Select 'value1' + 'value1' + ...+'ValueN' from tbl_name

						-- Example :
							Select 'Hello'+ 'World'
							Select 'Hello '+ 'World'
							Select 'Hello'+ ' World'
							Select 'Hello' + ' ' + 'World'

							Select 
								Reg_FirstName +' '  + Reg_MiddleName + ' ' + Reg_LastName as FullName
							from tbl_RegisterUser

					concat_ws() :
						WS is stand for with seperator.
						Concat_ws join the string value and return as a single string.

						-- Syntax :
							Select concat_ws(seperator,'value1','value2',...'valueN')

						-- Example :
							Select concat_ws(' ','Hello','World','Tech')
							Select concat_ws('-','Hello','World','Tech')							

							Select 
								concat_ws(' ',Reg_FirstName , Reg_MiddleName , Reg_LastName) as FullName
							from tbl_RegisterUser

					replace
					reverse					
					substring
					left
					right

			3. Date function

		2. User defined function (UDF)