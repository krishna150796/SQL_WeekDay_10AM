-- Single SP
	-- Insert
	-- Update
	-- Delete
	-- Select
-- Perform this 4 operation based on user input.

exec sp_CategoryMaster 'Update',1,'Update SP'
exec sp_CategoryMaster @Type = 'Select'
exec sp_CategoryMaster @Type = 'Insert',@Category_Name= 'New Cat' 

Select * from tbl_CategoryMaster

Alter procedure sp_CategoryMaster
(
	-- Parameter
	@Type nvarchar(20),
	@Category_Id int = null,
	@Category_Name nvarchar(50) = null
)
As
Begin
	If(@Type = 'Insert')
	Begin
		Insert into tbl_CategoryMaster(Category_Name)
		values(@Category_Name)
	End
	Else if(@Type = 'Update')
	Begin
		-- Update operation
		Update tbl_CategoryMaster set
			Category_Name = @Category_Name
		Where Category_Id = @Category_Id
	End
	Else if(@Type = 'Delete')
	Begin
		-- Delete operation
		Delete from tbl_CategoryMaster where Category_Id = @Category_Id
	End
	Else if(@Type = 'Select')
	Begin
		-- Select operation
		Select * from tbl_CategoryMaster
	End
	Else
	Begin
		print('Invalid choice')
	End
End