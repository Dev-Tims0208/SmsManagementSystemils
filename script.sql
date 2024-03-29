USE [master]
GO
/****** Object:  Database [MVCDemo]    Script Date: 5/18/2022 9:06:35 AM ******/
CREATE DATABASE [MVCDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVCDEMO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MVCDEMO.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MVCDEMO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MVCDEMO_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MVCDemo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVCDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVCDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVCDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVCDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVCDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVCDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVCDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVCDemo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MVCDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVCDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVCDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVCDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVCDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVCDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVCDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVCDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVCDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVCDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVCDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVCDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVCDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVCDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVCDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVCDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVCDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MVCDemo] SET  MULTI_USER 
GO
ALTER DATABASE [MVCDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVCDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVCDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVCDemo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MVCDemo]
GO
/****** Object:  Table [dbo].[Broadcasters]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Broadcasters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tbl_id] [int] NULL,
	[systemC] [int] NULL,
 CONSTRAINT [PK_Broadcaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CgppDivision]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CgppDivision](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[OfficeId] [int] NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CgppOffices]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CgppOffices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CgppPhonebook]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CgppPhonebook](
	[PhoneId] [int] IDENTITY(1,1) NOT NULL,
	[CellNum] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_CgppPhonebook] PRIMARY KEY CLUSTERED 
(
	[PhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CgppRole]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CgppRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
 CONSTRAINT [PK_CgppRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classification]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classification](
	[classid] [int] IDENTITY(1,1) NOT NULL,
	[classification] [nvarchar](200) NULL,
	[isactive] [int] NULL,
 CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[classid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConcernOffices]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcernOffices](
	[concernid] [int] IDENTITY(1,1) NOT NULL,
	[formatid] [int] NULL,
	[officeid] [int] NULL,
	[isactive] [int] NULL,
	[isallAccess] [int] NULL,
 CONSTRAINT [PK_ConcernOffices] PRIMARY KEY CLUSTERED 
(
	[concernid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](100) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Drafts]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drafts](
	[draftID] [int] IDENTITY(1,1) NOT NULL,
	[Sendto] [nvarchar](15) NULL,
	[msg] [nvarchar](max) NULL,
	[tag] [int] NULL CONSTRAINT [DF_Drafts_tag]  DEFAULT ((0)),
	[OfficeId] [int] NULL,
	[DivisionId] [int] NULL,
	[UsersId] [int] NULL,
	[CellNumber] [int] NULL,
 CONSTRAINT [PK_Drafts] PRIMARY KEY CLUSTERED 
(
	[draftID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntryLogs]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryLogs](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[eid] [int] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_EntryLogs] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormattedMessages]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormattedMessages](
	[smsid] [int] IDENTITY(1,1) NOT NULL,
	[formatid] [int] NULL,
	[msg] [nvarchar](max) NULL,
	[sender] [nvarchar](15) NULL,
	[receiver] [nvarchar](15) NULL,
	[isactive] [int] NULL,
	[date_received] [datetime] NULL,
	[unread] [int] NULL,
	[action] [int] NULL,
	[broadcast] [int] NULL,
	[classid] [int] NULL,
	[officeid] [int] NULL,
 CONSTRAINT [PK_FormattedMessages] PRIMARY KEY CLUSTERED 
(
	[smsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grouping_cellnumbers]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grouping_cellnumbers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupid] [int] NULL,
	[pk] [int] NOT NULL,
	[systemC] [int] NULL,
 CONSTRAINT [PK_Grouping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keyword] [nvarchar](200) NULL,
	[subgroup] [nvarchar](200) NULL,
	[isactive] [int] NULL,
	[isdeletable] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Isdeleted] [bit] NULL,
	[CreateOn] [date] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_tblSMS_SystemFormat]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_tblSMS_SystemFormat](
	[codeId] [int] IDENTITY(1,1) NOT NULL,
	[sms_format] [varchar](max) NULL,
	[sms_description] [varchar](max) NULL,
	[stored_proc_name] [varchar](max) NULL,
	[stored_proc_param_format] [varchar](max) NULL,
	[is_with_return] [int] NULL,
	[separator] [varchar](1) NULL,
	[is_active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Pid] [int] NOT NULL,
	[Sid] [int] NULL,
	[sort] [int] NULL,
	[menuname] [nvarchar](100) NULL,
	[action] [nvarchar](100) NULL,
	[controller] [nvarchar](100) NULL,
	[icon] [nvarchar](200) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MobileNetProvider]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileNetProvider](
	[netProviderID] [int] IDENTITY(1,1) NOT NULL,
	[networkname] [nvarchar](20) NULL,
 CONSTRAINT [PK_MobileNetProvider] PRIMARY KEY CLUSTERED 
(
	[netProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Municipality]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipality](
	[munid] [int] IDENTITY(1,1) NOT NULL,
	[Municipalityname] [nvarchar](50) NULL,
	[district] [int] NULL,
 CONSTRAINT [PK_Municipality] PRIMARY KEY CLUSTERED 
(
	[munid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfficialsInformations]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficialsInformations](
	[offid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](200) NULL,
	[lname] [nvarchar](200) NULL,
	[mname] [nvarchar](200) NULL,
	[district] [nchar](10) NULL,
	[cellno] [nvarchar](300) NULL,
	[networkID] [int] NULL,
	[OfficialDescID] [int] NULL,
	[munid] [int] NULL,
	[suffix] [nvarchar](10) NULL,
	[bday] [date] NULL,
	[mynumbers] [int] NULL,
	[gender] [int] NULL,
 CONSTRAINT [PK_OfficialsInformations] PRIMARY KEY CLUSTERED 
(
	[offid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfficialsPosition]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficialsPosition](
	[descid] [int] NOT NULL,
	[keword] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_OfficialsPosition] PRIMARY KEY CLUSTERED 
(
	[descid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phonebook]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phonebook](
	[phoneid] [int] IDENTITY(1,1) NOT NULL,
	[cnum] [nvarchar](300) NULL,
	[owner_fname] [nvarchar](300) NULL,
	[owner_lname] [nvarchar](300) NULL,
	[gender] [int] NULL,
	[bday] [date] NULL,
	[owner_mname] [nvarchar](5) NULL,
	[suffix] [nvarchar](5) NULL,
	[officeid] [int] NULL,
	[eid] [int] NULL,
	[isactive] [int] NULL,
 CONSTRAINT [PK_Phonebookx] PRIMARY KEY CLUSTERED 
(
	[phoneid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pilaKeyword]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pilaKeyword](
	[pilaid] [int] IDENTITY(1,1) NOT NULL,
	[prodcode] [nvarchar](100) NULL,
	[price] [money] NULL,
	[isactive] [int] NULL,
	[dateEntered] [datetime] NULL,
	[eid] [int] NULL,
 CONSTRAINT [PK_pila] PRIMARY KEY CLUSTERED 
(
	[pilaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrefixMobileNumber]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrefixMobileNumber](
	[netsmsID] [int] IDENTITY(1,1) NOT NULL,
	[prefix] [nvarchar](4) NULL,
	[networkID] [int] NULL,
 CONSTRAINT [PK_PrefixMobileNumber] PRIMARY KEY CLUSTERED 
(
	[netsmsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rawMessage]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rawMessage](
	[smsid] [int] IDENTITY(1,1) NOT NULL,
	[msg] [nvarchar](max) NULL,
	[sender] [nvarchar](15) NULL,
	[IMSI] [nvarchar](50) NULL,
	[networkID] [int] NULL,
	[receiver] [nvarchar](15) NULL,
	[date_received] [datetime] NULL,
 CONSTRAINT [PK_rawMessage] PRIMARY KEY CLUSTERED 
(
	[smsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SentItems]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SentItems](
	[SentItemsID] [int] IDENTITY(1,1) NOT NULL,
	[Destination] [nvarchar](15) NULL,
	[message] [nvarchar](max) NULL,
	[eid] [int] NULL,
	[DateSent] [datetime] NULL,
	[Systemname] [nvarchar](200) NULL,
 CONSTRAINT [PK_SentItems] PRIMARY KEY CLUSTERED 
(
	[SentItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SimCardInfo]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimCardInfo](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[IMSI] [nvarchar](50) NULL,
	[ownNumber] [nvarchar](11) NULL,
	[networkID] [int] NULL,
 CONSTRAINT [PK_SimCardInfo] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SMSFormats]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSFormats](
	[formatID] [int] IDENTITY(1,1) NOT NULL,
	[keyword] [nvarchar](50) NULL,
	[reply] [nvarchar](200) NULL,
	[smsformat] [nvarchar](200) NULL,
	[Isdisplay] [int] NULL,
	[autoExec] [int] NULL,
	[isactive] [int] NULL,
 CONSTRAINT [PK_SMSFormats] PRIMARY KEY CLUSTERED 
(
	[formatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SmsPDU]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsPDU](
	[conid] [int] IDENTITY(1,1) NOT NULL,
	[SmsPdu] [nvarchar](max) NULL,
	[octet] [nvarchar](20) NULL,
	[currentNumber] [int] NULL,
	[TotalMessages] [int] NULL,
	[ReferenceNumber] [int] NULL,
 CONSTRAINT [PK_SmsUDP] PRIMARY KEY CLUSTERED 
(
	[conid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUsers](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[pword] [nvarchar](50) NULL,
	[usrname] [nvarchar](50) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_SystemUsers] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[gid] [int] NOT NULL,
	[gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblGender] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStuffNumbers]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStuffNumbers](
	[xid] [int] IDENTITY(1,1) NOT NULL,
	[cnums] [nvarchar](max) NULL,
	[msg] [nvarchar](max) NULL,
	[tag] [nchar](10) NULL,
 CONSTRAINT [PK_tblStuffNumbers] PRIMARY KEY CLUSTERED 
(
	[xid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnidentifiedNetwork]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidentifiedNetwork](
	[unidentifiedNoID] [int] IDENTITY(1,1) NOT NULL,
	[cnum] [nvarchar](20) NULL,
	[prefix] [nvarchar](4) NULL,
 CONSTRAINT [PK_UnidentifiedNetwork] PRIMARY KEY CLUSTERED 
(
	[unidentifiedNoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/18/2022 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[EmailID] [varchar](100) NULL,
	[DistrictID] [int] NULL,
	[OfficeID] [int] NULL,
	[DivisionID] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CgppDivision] ON 

INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (9, N'DIVISIONNGIT', 4)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (10, N'DIVISIONSUPPORT', 3)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (11, N'DiviSIONNAITOH', 1)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (12, N'Division of Lol', 9)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (13, N'Division of Lol', 9)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (14, N'DIVISIONTO', 3)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (15, N'Division Lok', 3)
INSERT [dbo].[CgppDivision] ([Id], [Name], [OfficeId]) VALUES (16, N'Division Lok', 6)
SET IDENTITY_INSERT [dbo].[CgppDivision] OFF
SET IDENTITY_INSERT [dbo].[CgppOffices] ON 

INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (1, N'Office of the City Mayor')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (2, N'OfficeTresurer')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (3, N'OfficengBabae')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (4, N'OFFICELEGIT')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (5, N'Office of The Representatives')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (6, N'OfficeCitizen')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (8, N'Officenaaso')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (9, N'OFFICE of Dota')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (10, N'OfficeNiNaruto')
INSERT [dbo].[CgppOffices] ([Id], [Name]) VALUES (11, N'Office of Environment ER')
SET IDENTITY_INSERT [dbo].[CgppOffices] OFF
SET IDENTITY_INSERT [dbo].[CgppPhonebook] ON 

INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (1, NULL, CAST(N'2022-05-14 12:37:40.977' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (2, NULL, CAST(N'2022-05-14 12:38:43.547' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (3, 566456465, CAST(N'2022-05-16 00:44:48.140' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (4, 987987, CAST(N'2022-05-16 00:45:05.017' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (5, NULL, CAST(N'2022-05-17 10:43:28.953' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (6, 6546556, CAST(N'2022-05-17 10:43:36.803' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (7, 12, CAST(N'2022-05-17 10:43:41.737' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (8, 52525, CAST(N'2022-05-17 10:43:45.860' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (9, 48798, CAST(N'2022-05-17 10:43:49.867' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (10, 888888, CAST(N'2022-05-17 10:43:57.277' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (11, 6515252, CAST(N'2022-05-17 10:50:28.240' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (12, NULL, CAST(N'2022-05-17 16:22:38.870' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (13, NULL, CAST(N'2022-05-17 20:32:40.383' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (14, 9208855, CAST(N'2022-05-17 20:32:55.977' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (15, NULL, CAST(N'2022-05-17 20:33:11.417' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (16, 9544258, CAST(N'2022-05-17 20:33:26.103' AS DateTime))
INSERT [dbo].[CgppPhonebook] ([PhoneId], [CellNum], [DateAdded]) VALUES (17, 8564325, CAST(N'2022-05-17 20:35:22.620' AS DateTime))
SET IDENTITY_INSERT [dbo].[CgppPhonebook] OFF
SET IDENTITY_INSERT [dbo].[CgppRole] ON 

INSERT [dbo].[CgppRole] ([RoleID], [RoleName]) VALUES (1, N'Administrator ')
INSERT [dbo].[CgppRole] ([RoleID], [RoleName]) VALUES (2, N'User')
INSERT [dbo].[CgppRole] ([RoleID], [RoleName]) VALUES (3, N'Demo')
SET IDENTITY_INSERT [dbo].[CgppRole] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DistrictID], [DistrictName]) VALUES (1, N'POWERDISSTICT')
INSERT [dbo].[District] ([DistrictID], [DistrictName]) VALUES (2, N'qwewe')
INSERT [dbo].[District] ([DistrictID], [DistrictName]) VALUES (3, N'ddd')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Drafts] ON 

INSERT [dbo].[Drafts] ([draftID], [Sendto], [msg], [tag], [OfficeId], [DivisionId], [UsersId], [CellNumber]) VALUES (17, NULL, N'aaaaaa', 0, 11, 16, 32, NULL)
INSERT [dbo].[Drafts] ([draftID], [Sendto], [msg], [tag], [OfficeId], [DivisionId], [UsersId], [CellNumber]) VALUES (18, NULL, N'fsdfs', 0, 11, 16, 33, NULL)
INSERT [dbo].[Drafts] ([draftID], [Sendto], [msg], [tag], [OfficeId], [DivisionId], [UsersId], [CellNumber]) VALUES (19, NULL, N'sdafsafdsa', 0, 1, 10, 25, NULL)
INSERT [dbo].[Drafts] ([draftID], [Sendto], [msg], [tag], [OfficeId], [DivisionId], [UsersId], [CellNumber]) VALUES (20, NULL, N' HI ANE    HVFAA BA MAFA', 0, 1, 10, 34, NULL)
SET IDENTITY_INSERT [dbo].[Drafts] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (1, 1, N'Admin', N'admin', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (2, 2, N'Tommy123', N'tomclyde', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (3, 2, N'asongulol', N'bugok', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (4, 2, N'qwerty123', N'qwerty', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (14, 2, N'SSSE', N'12345', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (15, 2, N'WWWWQEQ', N'12345qwe', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (16, 2, N'adasdas', N'12345', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (17, 2, N'DDDD', N'12345', 0, CAST(N'2022-05-13' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (18, 2, N'awaw', N'12345', 0, CAST(N'2022-05-14' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (19, 2, N'hahaha', N'12345', 0, CAST(N'2022-05-14' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (20, 2, N'KUTO', N'12345', 0, CAST(N'2022-05-14' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (21, 2, N'Tom123', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (22, 2, N'qwerty', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (23, 2, N'Tomclydexxx', N'tomclyde123', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (24, 2, N'lebron', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (25, 2, N'joke', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (26, 2, N'power12345', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (27, 2, N'away', N'12345', 0, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (28, 2, N'kobe', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (29, 2, N'ITAGO123', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (30, 2, N'michael', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (31, 2, N'sele', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (32, 2, N'aso', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (33, 2, N'jojo', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (34, 2, N'vic123', N'12345', 0, CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [Isdeleted], [CreateOn]) VALUES (35, 2, N'heneral', N'12345', 0, CAST(N'2022-05-17' AS Date))
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (22, 23, N'Tom Clyde Basig', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 1, 9, CAST(N'2022-05-16 02:04:34.887' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (24, 25, N'nestle', N'brgyhallppc', N'Male', N'tomclydebasig@gmail.com', NULL, 1, 10, CAST(N'2022-05-16 02:56:46.173' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (25, 26, N'KOBEBRYANT', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 1, 10, CAST(N'2022-05-16 03:12:02.833' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (26, 27, N'naruto', N'Brgy.Bagong Sikat', N'Male', N'noy@gmail.com', NULL, 5, 10, CAST(N'2022-05-16 03:36:50.273' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (27, 28, N'ssssss', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 11, 10, CAST(N'2022-05-17 15:12:05.900' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (28, 29, N'JANE', N'brgy langogan', N'Male', N'tomclydebasig@gmail.com', NULL, 1, 10, CAST(N'2022-05-17 15:44:52.683' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (29, 30, N'MICHAEL JORDAN', N'123', N'Male', N'tomclydebasig@gmail.com', NULL, 6, 10, CAST(N'2022-05-17 16:17:22.940' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (30, 31, N'SELENA', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 11, 16, CAST(N'2022-05-17 16:21:50.490' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (31, 32, N'ASDASDAgg', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 11, 16, CAST(N'2022-05-17 16:30:38.797' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (32, 33, N'diaz', N'Brgy.Bagong Sikat', N'Male', N'tomclydebasig@gmail.com', NULL, 11, 16, CAST(N'2022-05-17 16:38:32.270' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (33, 34, N'VICTORMAGTANGOL', N'Brgy.Bagong Sikat', N'Male', N'angela@gmail.com', NULL, 11, 16, CAST(N'2022-05-17 16:54:56.627' AS DateTime))
INSERT [dbo].[User] ([UserID], [LoginID], [Name], [Address], [Gender], [EmailID], [DistrictID], [OfficeID], [DivisionID], [DateAdded]) VALUES (34, 35, N'Heneral Luna', N'Brgyluviminda', N'Male', N'heneral@gmail.com', NULL, 1, 10, CAST(N'2022-05-17 20:31:37.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[m_tblSMS_SystemFormat] ADD  DEFAULT ((0)) FOR [is_with_return]
GO
ALTER TABLE [dbo].[m_tblSMS_SystemFormat] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Phonebook] ADD  CONSTRAINT [DF_Phonebook_eid]  DEFAULT ((0)) FOR [eid]
GO
ALTER TABLE [dbo].[Phonebook] ADD  CONSTRAINT [DF_Phonebook_isactive]  DEFAULT ((1)) FOR [isactive]
GO
ALTER TABLE [dbo].[PrefixMobileNumber] ADD  CONSTRAINT [DF_PrefixMobileNumber_networkID]  DEFAULT ((0)) FOR [networkID]
GO
ALTER TABLE [dbo].[SimCardInfo] ADD  CONSTRAINT [DF_SimCardInfo_networkID]  DEFAULT ((0)) FOR [networkID]
GO
ALTER TABLE [dbo].[tblStuffNumbers] ADD  CONSTRAINT [DF_tblStuffNumbers_tag]  DEFAULT ((0)) FOR [tag]
GO
ALTER TABLE [dbo].[CgppDivision]  WITH CHECK ADD  CONSTRAINT [FK_CgppDivision_CgppOffices] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[CgppOffices] ([Id])
GO
ALTER TABLE [dbo].[CgppDivision] CHECK CONSTRAINT [FK_CgppDivision_CgppOffices]
GO
ALTER TABLE [dbo].[CgppDivision]  WITH CHECK ADD  CONSTRAINT [FK_Division_Offices] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[CgppOffices] ([Id])
GO
ALTER TABLE [dbo].[CgppDivision] CHECK CONSTRAINT [FK_Division_Offices]
GO
ALTER TABLE [dbo].[ConcernOffices]  WITH CHECK ADD  CONSTRAINT [FK_ConcernOffices_SMSFormats] FOREIGN KEY([formatid])
REFERENCES [dbo].[SMSFormats] ([formatID])
GO
ALTER TABLE [dbo].[ConcernOffices] CHECK CONSTRAINT [FK_ConcernOffices_SMSFormats]
GO
ALTER TABLE [dbo].[Drafts]  WITH CHECK ADD  CONSTRAINT [FK_Drafts_CgppPhonebook] FOREIGN KEY([CellNumber])
REFERENCES [dbo].[CgppPhonebook] ([PhoneId])
GO
ALTER TABLE [dbo].[Drafts] CHECK CONSTRAINT [FK_Drafts_CgppPhonebook]
GO
ALTER TABLE [dbo].[Drafts]  WITH CHECK ADD  CONSTRAINT [FK_Drafts_User] FOREIGN KEY([UsersId])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Drafts] CHECK CONSTRAINT [FK_Drafts_User]
GO
ALTER TABLE [dbo].[FormattedMessages]  WITH CHECK ADD  CONSTRAINT [FK_FormattedMessages_Classification] FOREIGN KEY([classid])
REFERENCES [dbo].[Classification] ([classid])
GO
ALTER TABLE [dbo].[FormattedMessages] CHECK CONSTRAINT [FK_FormattedMessages_Classification]
GO
ALTER TABLE [dbo].[FormattedMessages]  WITH CHECK ADD  CONSTRAINT [FK_FormattedMessages_SMSFormats] FOREIGN KEY([formatid])
REFERENCES [dbo].[SMSFormats] ([formatID])
GO
ALTER TABLE [dbo].[FormattedMessages] CHECK CONSTRAINT [FK_FormattedMessages_SMSFormats]
GO
ALTER TABLE [dbo].[Grouping_cellnumbers]  WITH CHECK ADD  CONSTRAINT [FK_Grouping_Groups] FOREIGN KEY([groupid])
REFERENCES [dbo].[Groups] ([id])
GO
ALTER TABLE [dbo].[Grouping_cellnumbers] CHECK CONSTRAINT [FK_Grouping_Groups]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_CgppRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[CgppRole] ([RoleID])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_CgppRole]
GO
ALTER TABLE [dbo].[OfficialsInformations]  WITH CHECK ADD  CONSTRAINT [FK_OfficialsInformations_Municipality] FOREIGN KEY([munid])
REFERENCES [dbo].[Municipality] ([munid])
GO
ALTER TABLE [dbo].[OfficialsInformations] CHECK CONSTRAINT [FK_OfficialsInformations_Municipality]
GO
ALTER TABLE [dbo].[OfficialsInformations]  WITH CHECK ADD  CONSTRAINT [FK_OfficialsInformations_OfficialsPosition] FOREIGN KEY([OfficialDescID])
REFERENCES [dbo].[OfficialsPosition] ([descid])
GO
ALTER TABLE [dbo].[OfficialsInformations] CHECK CONSTRAINT [FK_OfficialsInformations_OfficialsPosition]
GO
ALTER TABLE [dbo].[OfficialsInformations]  WITH CHECK ADD  CONSTRAINT [FK_OfficialsInformations_PrefixMobileNumber] FOREIGN KEY([networkID])
REFERENCES [dbo].[PrefixMobileNumber] ([netsmsID])
GO
ALTER TABLE [dbo].[OfficialsInformations] CHECK CONSTRAINT [FK_OfficialsInformations_PrefixMobileNumber]
GO
ALTER TABLE [dbo].[PrefixMobileNumber]  WITH CHECK ADD  CONSTRAINT [FK_PrefixMobileNumber_MobileNetProvider] FOREIGN KEY([networkID])
REFERENCES [dbo].[MobileNetProvider] ([netProviderID])
GO
ALTER TABLE [dbo].[PrefixMobileNumber] CHECK CONSTRAINT [FK_PrefixMobileNumber_MobileNetProvider]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_CgppDivision] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[CgppDivision] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_CgppDivision]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_CgppOffices] FOREIGN KEY([OfficeID])
REFERENCES [dbo].[CgppOffices] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_CgppOffices]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_District]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Login]
GO
USE [master]
GO
ALTER DATABASE [MVCDemo] SET  READ_WRITE 
GO
