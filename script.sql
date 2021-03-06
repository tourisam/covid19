USE [VT_DairyRetailDB]
GO
/****** Object:  Table [dbo].[Core.Md_Contact]    Script Date: 22-01-2020 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core.Md_Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserRef] [nvarchar](4000) NOT NULL,
	[FirstName] [nvarchar](400) NOT NULL,
	[LastName] [nvarchar](400) NOT NULL,
	[FullName] [nvarchar](220) NOT NULL,
	[MobileNumber] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](800) NULL,
	[Password] [nvarchar](4000) NOT NULL,
	[EnforcePasswordChange] [bit] NULL,
	[DisableDuetoInactivity] [bit] NULL,
	[WorngAttempts] [bigint] NULL,
	[ExpiryDate] [datetime] NULL,
	[IsLicensed] [bit] NULL,
	[Disabled] [bit] NULL,
	[_CreatedDate] [datetime] NULL,
	[_CreatedBy] [nvarchar](256) NULL,
	[_CreatedId] [bigint] NULL,
	[_LasteditedDate] [datetime] NULL,
	[_LasteditedBy] [nvarchar](256) NULL,
	[_LasteditedId] [bigint] NULL,
	[_Active] [bit] NULL,
 CONSTRAINT [PK_Core.Md_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Core.Md_Contact] ADD  DEFAULT (getdate()) FOR [_CreatedDate]
GO
