Conditions :
	With the condition we can execute one of the code.

	Types Of condition :
		If...else :
			If condition is used to execute one of the section of code.
			If condition always return boolean value. Either false or true.
			We will mention condition with If statement.
			Only one part of block is executed from if and else.
			We can not implement if..else into SQL statement.

			-- Syntax :
				If (condition) -- This condition always return true / false
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				If (5 = 5) -- true
				Begin
					print('Value A and B is equal')
				End
				Else
				Begin
					print('Value A and B is not equal')
				End
				------------------------------------------------
				If (5 = 6) -- false
				Begin
					print('Value A and B is equal')
				End
				Else
				Begin
					print('Value A and B is not equal')
				End

				------------------------------------------
				If (5 = 5) -- true
				Begin
					Select * from tbl_CategoryMaster
				End
				Else
				Begin
					print('Value A and B is not equal')
				End

				----------------------------------------------- Invalid code
				Select If (5 =5) begin print('Value A and B is equal') end 
					else begin print('value A and B is not equal') end as boolOutput

				-----------------------------------------------
				Select * from tbl_Eployee

				-- If Employee name is exists into table then we will update the details
				-- else employee is not exists then we will insert as a new record

				Declare @Employee_Name as nvarchar(20)
				Declare @EMployee_Age as int

				Set @Employee_Name = 'Darshit'
				set @EMployee_Age = 30

				If exists (Select Employee_Name from tbl_Eployee where Employee_Name = @Employee_Name)
				Begin
					Update tbl_Eployee set Employee_Age = @EMployee_Age where Employee_Name = @Employee_Name
				End
				Else
				Begin
					Insert into tbl_Eployee(Employee_Id,Employee_Name,Employee_Age)
					values(1,@Employee_Name,@EMployee_Age)
				End


				-------------------- Reverse same condition -----------------
				Declare @Employee_Name as nvarchar(20)
				Declare @EMployee_Age as int

				Set @Employee_Name = 'Pratik'
				set @EMployee_Age = 31

				If Not exists (Select Employee_Name from tbl_Eployee where Employee_Name = @Employee_Name)
				Begin
					Insert into tbl_Eployee(Employee_Id,Employee_Name,Employee_Age)
					values(2,@Employee_Name,@EMployee_Age)
				End
				Else
				Begin
					Update tbl_Eployee set Employee_Age = @EMployee_Age where Employee_Name = @Employee_Name
				End

				Select * from tbl_Eployee

		If...else if...else
			We can use multiple condition and compare multiple values
			We can not use inside select statement.
			All properties are similar to If..else condition.
			If all condition is false then else is always execute.
			If any of the condition is true then remaining conditions will not execute.

			-- Syntax
				If (condition)
				Begin
					-- SQL statement
				End
				Else if (Condition)
				Begin
					-- SQL statement
				End
				Else if (condition)
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				Declare @val1 int = 0
				Declare @Val2 int = 5

				If (@val1 = @Val2)
				Begin
					print('Value1 and value2 is equal')
				End
				Else if(@val1 > @Val2)
				Begin
					print('Value1 is greater than Value2')
				ENd
				Else if(@val1 < @Val2)
				Begin
					print('Value1 is less than Value2')
				End
				Else
				Begin
					print('Value1 is not equal to Value2')
				End

		Case condition