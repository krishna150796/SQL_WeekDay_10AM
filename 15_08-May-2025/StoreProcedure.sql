Store Procedure (SP) :
	Store Procedure is a block of code which contain SQL statement.
	This statement we can reuse and implement on multiple places.
	Avoid code duplication.
	We can manage SQL statement easlily if any modification happen in table.
	We can store SP in DB with SQL statement.
	SP name should start with 'sp_'.
	SP always accessible by its name

	What is Parameter ?
		Parameter hold some values in it.
		It always hold single value.
		We can declare parameter using symbol '@' at the beginging.
			Ex : @ParameterName
		Along with param name we need to define datatype also.
			Ex : @ParameterName datatype
		Param datatype should be same as defined in table.
		If datatype is string then length should be same as defined in table.

	-- Syntax :
		-- Default type SP
		Create procedure sp_Name
		As
		Begin
			SQL statement (Insert / Update / Delete and Select)
		End

		-- Parameterized procedure
		Create procedure sp_Name
		(
			-- Parameter
		)
		As
		Begin
			SQL statement (Insert / Update / Delete and Select)
		End

	-- How to execute SP :
		Exec sp_GetCategoryMaster
		Exec sp_GetCategoryMaster
		Exec sp_GetCategoryMaster
		Exec sp_GetCategoryMaster

		Exec sp_GetCategoryById 2 -- @CategoryId = 1