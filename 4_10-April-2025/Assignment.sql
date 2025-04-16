create database assignment
use assignment
create table tbl_CategoryMaster(
	tbl_Category_Id int,
	tbl_Category_Name varchar(50),
	tbl_Modified_Date date,
	Created_Date date,
	IsDeleted bit,);
	select* from tbl_CategoryMaster
 create table tbl_SubcategoryMaster(
	tbl_Subcategory_Id int,
	tbl_Category_Id int,
	tbl_Subcategory_Name varchar(50),
	SubCategory_Price int,
	SubCategory_Quantity varchar(10),
	Created_Date date,
	Modified_Date date,
	IsDeleted bit);
	select*from tbl_SubcategoryMaster
create table tbl_OrderMaster(
	tbl_Order_Id int,
	tbl_Subcategory_Id int,
	Order_Date date,
	Order_Qty int,
	Order_Amt int);
	select*from tbl_OrderMaster
	 insert into tbl_CategoryMaster(tbl_Category_Id,tbl_Category_Name,Created_Date,IsDeleted)
	 values(101,'Beverages','2025-01-20',0),
	        (102,'sugger','2024-02-21',0),
			(103,'tea','2025-02-09',0),
			(104,'coffe','2025-01-11',0),
			(105,'tumaric','2025-03-15',0);
		insert into  tbl_SubcategoryMaster(tbl_Subcategory_Id,tbl_Category_Id,tbl_Subcategory_Name,SubCategory_Price,SubCategory_Quantity,Created_Date,IsDeleted)
		values(1,101,'rice',12000,3,'2025-03-09',0),
		      (2,102,'apple',6000,6,'2025-03-02',0),
			  (3,103,'tv',56000,15,'2025-01-12',0),
			  (4,104,'fan',13000,08,'2024-03-12',0),
			  (5,105,'ac',79000,20,'2025-02-10',0);
			  delete  tbl_SubcategoryMaster
			  insert into tbl_OrderMaster(tbl_Order_Id,tbl_Subcategory_Id,Order_Date,Order_Qty,Order_Amt)
			  values(111,1,'2024-02-12',03,12000),
			        (112,2,'2025-04-08',06,5000),
					(113,3,'2025-03-22',12,35000),
					(114,4,'2025-01-12',18,9000),
					(115,5,'2025-03-29',10,45000);
					select*from [dbo].[tbl_CategoryMaster]
					select*from[dbo].[tbl_OrderMaster]
					select*from[dbo].[tbl_SubcategoryMaster]
		
		
		
		
		Select tbl_SubcategoryMaster.tbl_Subcategory_Id,
					tbl_OrderMaster.tbl_Subcategory_Id,
					tbl_SubcategoryMaster.tbl_Subcategory_Name,
					tbl_CategoryMaster.tbl_Category_Id,
					tbl_OrderMaster.Order_Date
				from 
				tbl_CategoryMaster inner join 
					tbl_SubcategoryMaster
					on tbl_CategoryMaster.tbl_Category_Id=tbl_SubcategoryMaster.tbl_Category_Id
				Inner join tbl_OrderMaster
					on tbl_SubcategoryMaster.tbl_Subcategory_Id = 
						tbl_OrderMaster.tbl_Subcategory_Id
			    



			  ,
