Truncate table [dbo].[tbl_RegisterUser]
Select * from [dbo].[tbl_RegisterUser]

Insert into [dbo].[tbl_RegisterUser] (Register_Id,Reg_FirstName, Reg_MiddleName, Reg_LastName,Reg_Mobile,Reg_Address,Reg_Email)
Values (1,'Akash','Bhavesh','Shukla',8974632154,'Vadodara', 'ABS@gmail.com'),
		(2,'Satish','Rahul','Patel',8746325815,'Anand', 'SRP@gmail.com'),
		(3,'Bhavish','Ajay','Sharma',9874532541,'Rajkot', 'BAS@gmail.com');

alter table [dbo].[tbl_RegisterUser]
add IsActive bit

update [dbo].[tbl_RegisterUser] set IsActive = 1

Select Register_Id,Reg_FirstName, Reg_MiddleName, Reg_LastName,Reg_Mobile,Reg_Address,Reg_Email,
	IsActive
from tbl_RegisterUser where IsActive = 1

-- Soft delete
Update tbl_RegisterUser set IsActive = 0 where Register_Id = 2

-- Hard Delete
Delete from tbl_RegisterUser where Register_Id = 3



Select CONVERT(nvarchar(20), GETDATE(), 106)


