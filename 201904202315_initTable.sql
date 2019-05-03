--GO
--USE ERP_Accouting

--
--SYS_Configurations:Cấu hình
--
GO
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'SYS_Configurations'))
	DROP TABLE SYS_Configurations
GO
CREATE TABLE SYS_Configurations(
	ID int primary key identity(1,1),
	[Name] nvarchar(200) not null,
	DataType varchar(30) not null,
	[Description] nvarchar(500),
	UpdatedBy varchar(20),
	UpdatedDate datetime
)
GO
--
--CAT_SubjectTypes: Loại đối tượng
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_SubjectTypes'))
	DROP TABLE CAT_SubjectTypes
GO
CREATE TABLE CAT_SubjectTypes(
	ID int primary key identity(1,1),
	[Name] nvarchar(200) not null,
	[Description] nvarchar(500),
	IsActive bit not null,
	CreatedBy varchar(20),
	CreatedDate datetime,
	UpdatedBy varchar(20),
	UpdatedDate datetime
)
GO
--
--CAT_SupplyTypes: Loại vật tư
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_SupplyTypes'))
	DROP TABLE CAT_SupplyTypes
GO
CREATE TABLE CAT_SupplyTypes(
	ID int primary key identity(1,1),
	[Name] nvarchar(200) not null,
	[Description] nvarchar(500),
	IsActive bit not null,
	CreatedBy varchar(20),
	CreatedDate datetime,
	UpdatedBy varchar(20),
	UpdatedDate datetime
)
GO
--
--CAT_Subjects: Danh mục đối tượng
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_Subjects'))
	DROP TABLE CAT_Subjects
GO
CREATE TABLE CAT_Subjects(
	ID int primary key identity(1,1),
	[Name] nvarchar(200) not null,
	[Address] nvarchar(300),	
	Phone varchar(150),	
	Fax	varchar(150),
	NumberBank varchar(50),	
	SubjectTypeID int,	
	[Description] nvarchar(500),
	IsActive bit not null,
	CreatedBy varchar(20),
	CreatedDate datetime,
	UpdatedBy varchar(20),
	UpdatedDate datetime
)
GO
--
--CAT_Supplies: Danh mục vật tư
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_Supplies'))
	DROP TABLE CAT_Supplies
GO
CREATE TABLE CAT_Supplies(
	ID int primary key identity(1,1),
	Code varchar(20),
	Unit nvarchar(100),
	[Name] nvarchar(200) NOT NULL,
	SupplyTypeID int,	
	[Description] nvarchar(500),	
	IsActive bit NOT NULL,
	CreatedBy varchar(20),	
	CreatedDate datetime,	
	UpdatedBy varchar(20),	
	UpdatedDate datetime	
)
GO
--
--CAT_Factor: Danh mục yếu tố
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_Factor'))
	DROP TABLE CAT_Factor
GO
CREATE TABLE CAT_Factor(
	ID int primary key identity(1,1),
	[Name] nvarchar(200) NOT NULL,
	[Description] nvarchar(500),	
	IsActive bit NOT NULL,
	CreatedBy varchar(20),	
	CreatedDate datetime,	
	UpdatedBy varchar(20),	
	UpdatedDate datetime	
)
GO
--
--CAT_AccountSystem: Danh mục hệ thống kế toán
--
IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_AccountSystem'))
	DROP TABLE CAT_AccountSystem
GO
CREATE TABLE CAT_AccountSystem(
	ID int primary key identity(1,1),
	Code varchar(20),
	[Name] nvarchar(200) NOT NULL,
	Nature int	NOT NULL,
	SubjectTypeID int,
	FollowFactor bit,
	[Description] nvarchar(500),
	IsActive bit NOT NULL,
	CreatedBy varchar(20),
	CreatedDate datetime,
	UpdatedBy varchar(20),
	UpdatedDate datetime	
)