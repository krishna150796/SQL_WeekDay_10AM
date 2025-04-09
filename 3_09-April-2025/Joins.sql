Joins :
	Joins is used to get data from one or multiple table as a single output.
	We can apply join for Select statement, Insert with Select statement, Update statement.

	-- Types of joins :
		Inner join :
			Inner join return a common data from one or multiple table.
			We can use n number of join in single SQL statement.

			-- Syntax :
				Select * from tbl_A
				Inner join tbl_B
					on tbl_A.columnName = tbl_B.columnName

			-- Example :
				use ECommerce_DB				

				Select * from tbl_SubcategoryMaster
				Select * from tbl_OrderMaster

				Select * from tbl_SubcategoryMaster
				Inner join tbl_OrderMaster
					on tbl_SubcategoryMaster.Subcategory_Id = tbl_OrderMaster.Subcategory_Id

				Select * from tbl_SubcategoryMaster
				Select * from tbl_OrderMaster

				Select tbl_SubcategoryMaster.Subcategory_Id,
					tbl_OrderMaster.Subcategory_Id,
					tbl_SubcategoryMaster.Subcategory_Name,
					tbl_OrderMaster.Order_Date
				from 
					tbl_SubcategoryMaster
				Inner join tbl_OrderMaster
					on tbl_SubcategoryMaster.Subcategory_Id = 
						tbl_OrderMaster.Subcategory_Id

				Select SM.Subcategory_Id,OM.Subcategory_Id,sm.Subcategory_Name,om.Order_Date
				from tbl_SubcategoryMaster as SM
				Inner join tbl_OrderMaster as OM
					on SM.Subcategory_Id = OM.Subcategory_Id

		Right join (Right outer join)
		Left join (Left outer join)
		Cross join
		Self join