/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2016
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [Financials]
GO

/****** Object:  Table [dbo].[tbl_jev]    Script Date: 10/28/2017 8:27:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_jev](
	[jev_id] [int] IDENTITY(1,1) NOT NULL,
	[jev_no] [nvarchar](12) NOT NULL,
	[jev_date] [datetime] NOT NULL,
	[fund_uid] [int] NOT NULL,
	[tmp_header_uid] [int] NOT NULL,
	[particulars] [nvarchar](1000) NOT NULL,
	[trans_transaction_type_uid] [int] NOT NULL,
	[amount] [float] NULL,
	[account_flag] [bit] NULL,
	[resp_center_uid] [int] NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[prepared_by] [int] NOT NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [int] NULL,
	[disapproved_date] [datetime] NULL,
	[disapproved_by] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tbl_jev] PRIMARY KEY CLUSTERED 
(
	[jev_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


