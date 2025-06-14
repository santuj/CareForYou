USE [master]
GO
/****** Object:  Database [CareForYou]    Script Date: 31-05-2025 00:08:08 ******/
CREATE DATABASE [CareForYou]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CareForYou', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CareForYou.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CareForYou_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CareForYou_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CareForYou] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CareForYou].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CareForYou] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CareForYou] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CareForYou] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CareForYou] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CareForYou] SET ARITHABORT OFF 
GO
ALTER DATABASE [CareForYou] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CareForYou] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CareForYou] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CareForYou] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CareForYou] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CareForYou] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CareForYou] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CareForYou] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CareForYou] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CareForYou] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CareForYou] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CareForYou] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CareForYou] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CareForYou] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CareForYou] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CareForYou] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CareForYou] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CareForYou] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CareForYou] SET  MULTI_USER 
GO
ALTER DATABASE [CareForYou] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CareForYou] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CareForYou] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CareForYou] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CareForYou] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CareForYou] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CareForYou] SET QUERY_STORE = ON
GO
ALTER DATABASE [CareForYou] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CareForYou]
GO
/****** Object:  Table [dbo].[AdminDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Profilepic] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AyaDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AyaDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Number] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Experience] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Primaryspecialty] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[IDType] [varchar](50) NULL,
	[IDNumber] [varchar](50) NULL,
	[Policeverification] [varchar](50) NULL,
	[EmploymentType] [varchar](50) NULL,
	[StartTime] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ProfilePictureNew] [varbinary](max) NULL,
	[IDProofNew] [varbinary](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_AyaDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AyaRequest1]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AyaRequest1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[IdType] [varchar](50) NULL,
	[IdNumber] [varchar](50) NULL,
	[IdProof] [varbinary](max) NULL,
	[FromDate] [varchar](50) NULL,
	[FromTime] [varchar](50) NULL,
	[ToDate] [varchar](50) NULL,
	[ToTime] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[AyaId] [nchar](10) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NurseDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Nursingqualification] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Licensenumber] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Password] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ProfilePicture] [varbinary](max) NULL,
	[Certificate] [varbinary](max) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_NurseDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NurseRequest]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[IdType] [varchar](50) NULL,
	[IdNumber] [varchar](50) NULL,
	[IdProof] [varbinary](max) NULL,
	[FromDate] [varchar](50) NULL,
	[FromTime] [varchar](50) NULL,
	[Todate] [varchar](50) NULL,
	[ToTime] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Status] [varchar](20) NULL,
	[NurseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Gender] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[ProfilePicture] [varbinary](max) NULL,
	[IDProof] [varbinary](max) NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AyaDetails] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[AyaRequest1] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[NurseDetails] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[NurseRequest] ADD  DEFAULT ('Pending') FOR [Status]
GO
/****** Object:  StoredProcedure [dbo].[InsertNurseDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[InsertNurseDetails](
@Name as varchar(50),
@Nursingqualification as varchar(50),
@Gender as varchar(50),
@Year as varchar(50),
@Contact as varchar(50),
@Licensenumber as varchar(50),
@Address as varchar(50),
@Password as varchar(50),
@DOB as varchar(50),
@Email as varchar(50),
@ProfilePicture as varbinary(max),
@Certificate as varbinary(max)

)

as
begin
insert into NurseDetails (Name, Nursingqualification, Gender, Year, Contact, Licensenumber, Address, Password, DOB,Email,ProfilePicture, Certificate) values (@Name, @Nursingqualification, @Gender, @Year, @contact, @Licensenumber, @Address, @Password, @DOB,@Email,@ProfilePicture, @Certificate)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertUserDetails]    Script Date: 31-05-2025 00:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertUserDetails](
@Name as varchar(50),
@Address as varchar(200),
@Gender as varchar(50),
@City as varchar(50),
@Contact as varchar(50),
@State as varchar(50),
@Email as varchar(50),
@Password as varchar(50),
@DOB as varchar(50),
@ProfilePicture as varbinary(max),
@IDProof as varbinary(max)

)

as
begin
insert into UserDetails(Name, Address, Gender, City, Contact, State, Email, Password, DOB, ProfilePicture,IDProof) values (@Name, @Address, @Gender, @City, @Contact, @State, @Email, @Password, @DOB, @ProfilePicture,@IDProof)
end
GO
USE [master]
GO
ALTER DATABASE [CareForYou] SET  READ_WRITE 
GO
