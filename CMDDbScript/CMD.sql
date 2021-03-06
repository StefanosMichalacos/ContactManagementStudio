USE [master]
GO
/****** Object:  Database [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C]    Script Date: 20/5/2019 8:24:30 πμ ******/
CREATE DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C', FILENAME = N'C:\Users\stefa\aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C_log', FILENAME = N'C:\Users\stefa\aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET QUERY_STORE = OFF
GO
USE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/5/2019 8:24:30 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/5/2019 8:24:30 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/5/2019 8:24:30 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/5/2019 8:24:30 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](70) NOT NULL,
	[Address] [nvarchar](120) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 20/5/2019 8:24:31 πμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[Description] [nvarchar](30) NULL,
	[ContactID] [bigint] NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190520013952_initial-migration', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190520020339_models-migration', N'2.1.8-servicing-32085')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'438df165-035f-4dea-b0a1-93ee7a058414', N'lucassellers@gmail.com', N'LUCASSELLERS@GMAIL.COM', N'lucassellers@gmail.com', N'LUCASSELLERS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMCFvvt5SgcTDECrt4oZrDYefk4+oszw0I6yQkw+2AiOrRTbDFpWJYGDUoKq95OYDw==', N'JYD5KMNJPLMZ6CLN2PUD42KVMHRFZG7D', N'01225f5c-79d3-4e14-b410-90477e3d3d9e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'ayannabrewer@gmail.com', N'AYANNABREWER@GMAIL.COM', N'ayannabrewer@gmail.com', N'AYANNABREWER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGiViV5XMVWlXYanDdKxuqoGVMsYxaWa+DRK8JGutvfrth0QQc1gGS+XFe8Hr9gogg==', N'NLYFJC75WV3EDF3IAUXZNY6MMMDYQ55E', N'2cabf851-9d2b-40ec-81de-3919a86a2233', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'felixsosa@gmail.com', N'FELIXSOSA@GMAIL.COM', N'felixsosa@gmail.com', N'FELIXSOSA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM4j0q4KPWjDyrYKKIpiA34S5bBE2+1jPhenX2dhHeAAhh4lGEoCbepfP2EgHt9KVg==', N'LRFVAOQ7M3KOCQPIQC2CBUZGGSHIXBLH', N'c2b4b721-d09c-4fce-81eb-d70ed78497c2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'evangelinemyers@gmail.com', N'EVANGELINEMYERS@GMAIL.COM', N'evangelinemyers@gmail.com', N'EVANGELINEMYERS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJqerF7/DpkIs6E9CTqUWBUeBjC1P2wckDgNxPN3GZaBHiP6rThm+MVEHS2YCq1riA==', N'U436LL355SHVCRD3YHOS4KPF7FJ4REDY', N'83c2189c-1399-40c8-a405-dd83013bf507', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'miltoncrawford@gmail.com', N'MILTONCRAWFORD@GMAIL.COM', N'miltoncrawford@gmail.com', N'MILTONCRAWFORD@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEF4lOp4mquzxeSKrf6V7RqOmMcp66T4vryB6azFAExZWSKx7G8DXOgXIk2l5Q/HniQ==', N'QX734LH35KXS4CPGC6WE4AMF76YNAOYF', N'e36bfb4b-1b20-4747-9924-97177b8b362f', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (1, N'438df165-035f-4dea-b0a1-93ee7a058414', N'Poppy', N'Oliver', N'poliver@hotmail.com', N'Warwick Promenade')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (4, N'438df165-035f-4dea-b0a1-93ee7a058414', N'Bella', N'Lyons', N'blyons@potmail.com', N'Percival Drift')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (5, N'438df165-035f-4dea-b0a1-93ee7a058414', N'Terry', N'Richardson', N'trichardson@hotmail.com', N'St Michael''s Drift')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (6, N'438df165-035f-4dea-b0a1-93ee7a058414', N'Lola', N'Caldwell', N'lcaldwell@hotmail.com', N'Lordship Park')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (7, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'Catherine', N'Stuart', N'cstuart@hotmail.com', N'Strathmore Quadrant')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (8, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'Michelle', N'Leon', N'mleon@hotmail.com', N'Home Farm Farm')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (9, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'Meghan', N'Ferguson', N'mferguson@hotmail.com', N'Badger Retreat')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (10, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'Liberty', N'Hubbard', N'lhubbard@hotmail.com', N'Freeman Limes')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (11, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'Daniella', N'Porter', N'dporter@hotmail.com', N'Woodhead Valley')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (12, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'Sharon', N'Richards', N'srichards@hotmail.com', N'Shadwell Street East')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (13, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'Carmen', N'Woods', N'cwoods@hotmail.com', N'Phillips Bottom')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (14, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'Tabitha', N'Morgan', N'tmorgan@hotmail.com', N'Hatton End')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (15, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'Kyla', N'Nichols', N'knichols@hotmail.com', N'Ripon Drive')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (16, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'Felicity', N'Lawson', N'flawson@hotmail.com', N'Gleneagles Haven')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (17, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'Holly', N'Love', N'hlove@hotmail.com', N'Oaktree Ride')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (18, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'Anisa', N'Stevens', N'astevens@hotmail.com', N'Swift Garth')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (19, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'Josephine', N'Solis', N'jsolis@hotmail.com', N'Gloucester Top')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (20, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'Elsa', N'Fields', N'efields@hotmail.com', N'Wick Green')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (21, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'Savannah', N'Zimmerman', N'szimmerman@hotmail.com', N'Navigation Bank')
INSERT [dbo].[Contact] ([ID], [CreatedBy], [FirstName], [LastName], [Email], [Address]) VALUES (22, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'Elisa', N'Carpenter', N'ecarpenter@hotmail.com', N'Stephen Poplars')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Phone] ON 

INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (1, N'438df165-035f-4dea-b0a1-93ee7a058414', N'6985478666', N'Cell Phone', 1)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (8, N'438df165-035f-4dea-b0a1-93ee7a058414', N'6975215488', N'Cell Phone ', 4)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (17, N'438df165-035f-4dea-b0a1-93ee7a058414', N'2103513383', N'Work', 5)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (18, N'438df165-035f-4dea-b0a1-93ee7a058414', N'2103548883', N'Home', 6)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (19, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'6973513383', N'Cell Phone ', 7)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (20, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'6973513383', N'Cell Phone ', 8)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (21, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'2105587899', N'Work', 9)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (22, N'65909baf-3daa-4eb7-9ba8-26f40a0a0e00', N'2106585846', N'Home', 10)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (23, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'6945215826', N'Cell Phone', 11)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (24, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'6976552669', N'Cell Phone ', 12)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (25, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'2105486889', N'Work', 13)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (26, N'8f0523b8-2f59-46ef-818d-c1b1e0801b3a', N'2105596666', N'Home', 14)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (27, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'6925384888', N'Cell Phone ', 15)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (28, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'6982226668', N'Cell Phone ', 16)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (29, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'2108858595', N'Work', 17)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (30, N'9220a5dc-988a-4872-8c07-3ed0859a76d9', N'2108465599', N'Home ', 18)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (31, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'6959265366', N'Cell Phone ', 19)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (32, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'6935585525', N'Cell Phone ', 20)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (33, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'2102548266', N'Home', 21)
INSERT [dbo].[Phone] ([ID], [CreatedBy], [PhoneNumber], [Description], [ContactID]) VALUES (34, N'ecb87a9b-96d5-490d-975c-539d93b9deef', N'2105495596', N'Work', 22)
SET IDENTITY_INSERT [dbo].[Phone] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Phone_ContactID]    Script Date: 20/5/2019 8:24:31 πμ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_ContactID] ON [dbo].[Phone]
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Contact_ContactID] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_Contact_ContactID]
GO
USE [master]
GO
ALTER DATABASE [aspnet-ContactManagementStudio-37EE940D-E95D-4A6E-8E55-DFD30165AE8C] SET  READ_WRITE 
GO
