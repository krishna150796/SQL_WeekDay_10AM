Alter procedure sp_InsertCategory
(
	@Category_Id int,
	@Category_Name nvarchar(40)
)
As
Begin
	Insert into tbl_CategoryMaster(Category_Id,Category_Name)
	values(@Category_Id,@Category_Name)

	Select Category_Id,Category_Name from tbl_CategoryMaster
	where Category_Id = @Category_Id
End