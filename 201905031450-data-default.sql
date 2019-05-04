--
--Cấu hình hệ thống
--
GO
truncate table SYS_Configurations
GO
insert into SYS_Configurations([Name],[Description],DataType,UpdatedBy,UpdatedDate) values('03/05/2019','Ngày bắt đầu sử dụng phần mềm','datetime','sys',GETDATE())
GO
insert into SYS_Configurations([Name],[Description],DataType,UpdatedBy,UpdatedDate) values('1','Phương pháp tính giá xuất kho (1: Bình quân gia quyền; 2: Bình quân thời điểm; 3: Nhập trước, xuất trước)','int','sys',GETDATE())
GO

