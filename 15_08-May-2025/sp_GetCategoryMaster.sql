Alter procedure sp_GetCategoryMaster
As
Begin
	-- SQL statement here
	Select Category_Id, Category_Name as CategoryName from tbl_CategoryMaster
End