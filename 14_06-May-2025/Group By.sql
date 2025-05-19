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


		Select CM.Category_Name, count(SB.Subcategory_Name) as Count_Subcategory
		From tbl_CategoryMaster as CM
		inner join tbl_SubcategoryMaster as SB
		ON CM.Category_id=SB.category_Id
		group by CM.Category_Name

		Types of group by :
			Rollup :
				When we need a subtotal and detailed level of grand total we can use rollup

				-- Syntax :
					Select columnName,columnName from tbl_name
					group by rollup(column)

				-- Example :
					Select CM.Category_Name, SB.Subcategory_Name as Count_Subcategory,
					Sum(SB.SubCategory_Price)
					From tbl_CategoryMaster as CM
					inner join tbl_SubcategoryMaster as SB
					ON CM.Category_id=SB.category_Id
					group by rollup(SB.SubCategory_Price,CM.Category_Name, SB.Subcategory_Name) 

					Select * from tbl_SubcategoryMaster
					Select * from tbl_CategoryMaster

			Cube :
				Return all the combination of subtotal for the column.

				-- Syntax :
					Select columnName,columnName from tbl_name
					group by cube(columnname)

				-- Example :
					Select CM.Category_Name, SB.Subcategory_Name as Count_Subcategory,
					Sum(SB.SubCategory_Price)
					From tbl_CategoryMaster as CM
					inner join tbl_SubcategoryMaster as SB
					ON CM.Category_id=SB.category_Id
					group by cube(SB.SubCategory_Price,CM.Category_Name, SB.Subcategory_Name) 



