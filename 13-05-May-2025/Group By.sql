Group by :
	Group by create a same data into group and present as a single record.
	Group by we can use with aggregate functions.

	-- Syntax :
		Select column_name from tbl_name
			group by column_name

	-- Example :
		Select * from tbl_CategoryMaster
		Select * from tbl_SubcategoryMaster

		Insert into tbl_SubcategoryMaster(Subcategory_Id,Category_Id,Subcategory_Name,SubCategory_Price)
		values(9,4,'Apple',68000)

		select CM.Category_id,CM.Category_Name,SB.Subcategory_Id,SB.Subcategory_Name
		From tbl_CategoryMaster as CM
		join tbl_SubcategoryMaster as SB
		ON CM.Category_id=SB.category_Id

		Select CM.Category_Name, SB.Subcategory_Name
		From tbl_CategoryMaster as CM
		inner join tbl_SubcategoryMaster as SB
		ON CM.Category_id=SB.category_Id
		group by CM.Category_Name , SB.Subcategory_Name
