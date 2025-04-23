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

					replace :
						Replace function we can use to replace char / word into the existing string.
						Searching a word / char is not case sensitive.

						-- Syntax :
							Select replace(string_expression,string_pattern,string_replacement)
							
							-- string_expression : Our actual string
							-- string_pattern : The string / char that we want to find.
							-- string_replacement : Wors/ char that we want to replace.

						-- Example :
							Select replace('Hello world','l','e') -- Heeeo wored

							Select replace('Hello world','Hello','Hi !') -- Hi ! world
							
							Select replace('Hello world','world','Kabir') -- Hello Kabir

							Select replace('Hello world','hello','Hi !') -- Hi ! world

							Select replace('Hello world','a','Hi !') -- Hello world

					reverse :
						Reverse funcion print string into reverse order.

						-- Syntax :
							Select reverse(string_Exression)

						-- Example :
							Select Reverse('Kabir') -- ribaK

							Select Reverse('Hello World') -- dlroW olleH

							Select reverse(column_name) from tbl_Name

					substring :
						When i want to extract a particular part from the string i can use substring.

						-- Syntax :
							Select substring(expression,start_index,length)

							-- expression : The stringor column we want to extract from 
							-- start_index : The string position. Our index is start from 1.
							-- length : Number of char to return.

						-- Example :
							Select substring('Hello World',2,3) -- ell

							Select substring('Hello World',2,5) -- ello 

							Select substring('Hello World ',7,7) -- World 

							Select substring(column_name,2,3)

					left :
						Return specified number of character from the left side.

						-- Syntax :
							Select left(string_expression,number_of_char)

						-- Example :
							Select left('Hello World',3) -- Hel

					right :
						Return specified number of char from right side.

						-- Syntax :
							Select right(string_expression,number_of_char)

						-- Example :
							Select Right('Hello world',3) -- rld

							-- AB123Dept
								Select substring('AB123Dept',3,3)

			3. Date function :
				Date function are used to get date.

				-- Types of Date Functions :
					sysdatetime :
						Return current date and time of the system where statement is executed.

						-- Syntax :
							Select sysdatetime() -- 2025-04-23 09:19:21.6401774

					sysutcdatetime
						UTC is stand for Coordinated Universal Time.

						-- Syntax :
							sysutcdatetime()

						-- Example :
							Select sysutcdatetime() -- 2025-04-23 03:57:01.8651086

					current_timestamp  :
						Return current date and time where sql server is installed.

						-- Syntax :
							current_timestamp

						-- Example :
							Select current_timestamp -- 2025-04-23 09:36:56.730

					getdate() :
						It is similar to current_timestamp function.
						It will return a date and time where our SQL server is installed.

						-- Syntax :
							getdate()

						-- Example :
							Select getdate() -- 2025-04-23 09:39:35.710

					getutcdate() :
						It is not depend on any region.
						It wil return universal time which is same across the world.

						-- Syntax :
							GetUTCDate()

						-- Example :
							Select Getutcdate() -- 2025-04-23 04:12:17.490

					datename() :
						When we need to extract any part of date and time we can use datename
						Datename is return value in string format.

						--Example :
							Select getdate()

							Select Datename(year,getdate()) as current_year
							Select Datename(day,getdate()) as current_day
							Select Datename(month,getdate()) as current_month
							Select datename(hour,getdate()) as current_hour
							Select datename(minute,getdate()) as current_minute
							Select datename(second,getdate()) as current_second
							Select datename(millisecond,getdate()) as current_ms
							Select datename(week,getdate()) as current_week
							Select datename(QUARTER,getdate()) as current_QUARTER
							Select datename(weekday,getdate()) as current_day
							Select datename(dayofyear,getdate()) as current_dayofyear

							select concat_ws('-',datename(day,getdate()),Datename(month,getdate()),Datename(year,getdate()))

					datepart() :
						Datepart is similar to datename.
						The difference is date part return a value in form of int while datename return value in string format.

						-- Assignment

					month :
						Return current month

						-- Example :
							Select month(getdate())

					year :
						Return current year

						-- Example :
							Select year(getdate())

					datediff :
						When weneed to identify the difference betweeen two days, month and year

						-- Syntax :
							Select datediff(interal,date1,date2)

						-- Example :
							select getdate()

							Select datediff(day,'2025-04-23 10:01:01.650','2025-05-24 10:01:01.650')
							Select datediff(month,'2025-04-23 10:01:01.650','2025-05-24 10:01:01.650')
							Select datediff(year,'2025-04-23 10:01:01.650','2026-05-24 10:01:01.650')

					isdate() :
						This function is used to validate date.
						This functions is return a bool value. If date is valid then retun 1 else return 0.

						-- Syntax :
							Select isdate(date)

						-- Example :
							Select isdate('2025-04-35 10:01:01.650')


		2. User defined function (UDF)