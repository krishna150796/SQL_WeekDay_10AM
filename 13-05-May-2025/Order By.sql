Order By :
	Order by is used to order the data into ascending or descending order.
	We can order string, number, decimal, boolean , etc types of data.
	There are two types of order by 
		1. Ascending
			We can define this order type using keyword 'asc'.
			By default order is ascending order.
		2. Descending
			We can define this order types using keyword 'DESC'.

	-- Syntax :
		Select columnName,columnName...ColumnnameN from tbl_name
		order by columnName asc | desc

	-- Example :
		Select * from tbl_CategoryMaster
		order by category_Name 

		Select * from tbl_CategoryMaster
		where Category_Id = 1
		Order by category_Name

		Select * from tbl_CategoryMaster
		order by category_Name desc

		Select * from tbl_CategoryMaster
		order by IsDeleted desc
		