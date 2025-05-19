Alter procedure sp_GetCategoryById
(
	@Category_Id int -- 2
)
As
Begin
	print @Category_Id

	Select Category_Id,Category_Name from tbl_CategoryMaster
		Where Category_Id = @Category_Id
End