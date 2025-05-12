Alter procedure sp_InsertIntoCategoryMasterAndSubCategory
(
	-- Param
	@CategoryName nvarchar(20),
	@SubCategory_Name nvarchar(20) = 'Unknown',
	@SubCategory_Price decimal(18,2)
)
As
Begin
	Declare @Category_Id int

	-- SQL statement
	-- Insert
	Insert into tbl_CategoryMaster(Category_Name)
	values(@CategoryName)
	
	Set @Category_Id = SCOPE_IDENTITY()
	print @Category_Id

	Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name,SubCategory_Price)
	values(scope_identity(),@SubCategory_Name,@SubCategory_Price)

	print scope_identity()

	Select * from tbl_CategoryMaster where Category_Id = @Category_Id
	Select * from tbl_SubcategoryMaster where Subcategory_Id = SCOPE_IDENTITY()

End


-------------------------- Execution ---------------------------------------------------
Exec sp_InsertIntoCategoryMasterAndSubCategory 
	@CategoryName = 'Chair',
	@SubCategory_Name = 'Student Chair',
	@SubCategory_Price = '4000'

select * from tbl_CategoryMaster
Select * from tbl_SubcategoryMaster