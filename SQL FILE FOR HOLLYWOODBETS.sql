USE [master]
GO
/****** Object:  Database [HollywoodbetsDB]    Script Date: 2020/07/10 16:46:48 ******/
CREATE DATABASE [HollywoodbetsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HollywoodbetsDB', FILENAME = N'C:\Users\User1\HollywoodbetsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HollywoodbetsDB_log', FILENAME = N'C:\Users\User1\HollywoodbetsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HollywoodbetsDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HollywoodbetsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HollywoodbetsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HollywoodbetsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HollywoodbetsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HollywoodbetsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HollywoodbetsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HollywoodbetsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HollywoodbetsDB] SET  MULTI_USER 
GO
ALTER DATABASE [HollywoodbetsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HollywoodbetsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HollywoodbetsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HollywoodbetsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HollywoodbetsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HollywoodbetsDB] SET QUERY_STORE = OFF
GO
USE [HollywoodbetsDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HollywoodbetsDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020/07/10 16:46:48 ******/
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
/****** Object:  Table [dbo].[BettyepeMarkets]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BettyepeMarkets](
	[BetTypeMarketID] [int] IDENTITY(1,1) NOT NULL,
	[MarketID] [int] NOT NULL,
	[BetTypeID] [int] NOT NULL,
 CONSTRAINT [PK_BettyepeMarkets] PRIMARY KEY CLUSTERED 
(
	[BetTypeMarketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BetTypes]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetTypes](
	[betypeid] [int] IDENTITY(1,1) NOT NULL,
	[bettype] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[betypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[countryid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[flagurl] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[countryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[TournamentID] [int] NULL,
	[EventName] [nvarchar](100) NULL,
	[EventDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Market]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Market](
	[MarketId] [int] IDENTITY(1,1) NOT NULL,
	[MarkeType] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odds]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds](
	[OddsId] [int] IDENTITY(1,1) NOT NULL,
	[Odds] [decimal](18, 2) NOT NULL,
	[EventsId] [int] NOT NULL,
	[MarketID] [int] NOT NULL,
 CONSTRAINT [PK_OddsMarket] PRIMARY KEY CLUSTERED 
(
	[OddsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sportCountry]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sportCountry](
	[SportId] [int] NULL,
	[CountryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SportTournament]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SportTournament](
	[TournamentId] [int] NULL,
	[SportId] [int] NULL,
	[CountryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sportTypes]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sportTypes](
	[sportId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[imageurl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[TournamentID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TournamentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentBeTypes]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentBeTypes](
	[TournamentId] [int] NULL,
	[TournamentBetypeID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BettyepeMarkets]  WITH CHECK ADD  CONSTRAINT [FK_BettyepeMarkets_Bettyepe] FOREIGN KEY([BetTypeID])
REFERENCES [dbo].[BetTypes] ([betypeid])
GO
ALTER TABLE [dbo].[BettyepeMarkets] CHECK CONSTRAINT [FK_BettyepeMarkets_Bettyepe]
GO
ALTER TABLE [dbo].[BettyepeMarkets]  WITH CHECK ADD  CONSTRAINT [FK_BettyepeMarkets_Markets] FOREIGN KEY([MarketID])
REFERENCES [dbo].[Market] ([MarketId])
GO
ALTER TABLE [dbo].[BettyepeMarkets] CHECK CONSTRAINT [FK_BettyepeMarkets_Markets]
GO
ALTER TABLE [dbo].[Odds]  WITH CHECK ADD  CONSTRAINT [FK_Odds_MarketID] FOREIGN KEY([MarketID])
REFERENCES [dbo].[Market] ([MarketId])
GO
ALTER TABLE [dbo].[Odds] CHECK CONSTRAINT [FK_Odds_MarketID]
GO
/****** Object:  StoredProcedure [dbo].[AddSportType]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSportType](@name nvarchar(100),@imageurl nvarchar(max))
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO sportTypes (name,imageurl)
	VALUES (@name,@imageurl)
END
GO
/****** Object:  StoredProcedure [dbo].[BetTypeFilter]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BetTypeFilter](@tournamentID int, @BettypeID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT T.TournamentID ,E.EventId,BM.BetTypeID ,M.MarketId,M.MarkeType,OM.Odds
FROM Tournament AS T
INNER JOIN TournamentBeTypes AS TB
ON T.TournamentID=TB.TournamentId
INNER JOIN Events AS E
ON E.TournamentID=E.TournamentID
INNER JOIN BettyepeMarkets AS BM
ON BM.BetTypeID= TB.TournamentBetypeID
INNER JOIN Market AS M
ON BM.BetypeMarketID=M.MarketId
INNER JOIN OddsMarket AS OM 
ON OM.MarketsId=M.MarketId
where T.TournamentID= @tournamentID and BM.BetTypeID= @BettypeID;

END

-- OddsMarkst,Events,Bettype,
GO
/****** Object:  StoredProcedure [dbo].[EventMarkets]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventMarkets](@tournamentID int )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT T.TournamentID ,E.EventId, BM.BetTypeID,M.MarketId ,M.MarkeType,O.Odds
FROM Events AS E
INNER JOIN Tournament AS T
ON E.TournamentID= T.TournamentID
INNER JOIN Odds AS O
ON O.EventsId = E.EventId
INNER JOIN BettyepeMarkets BM
on O.MarketID= BM.MarketID
INNER JOIN Market AS M 
ON M.MarketId=O.MarketID
WHERE T.TournamentID=@tournamentID
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllMarkts]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMarkts]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select * from Market
END
GO
/****** Object:  StoredProcedure [dbo].[GetCountryTournament]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCountryTournament](@CountryId int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select t.TournamentID,t.name
	from SportTournament as sp
	inner join Country as c
	on sp.CountryId= c.countryid
	inner join Tournament as t
	on t.TournamentID= sp.TournamentId
	where @CountryId=c.countryid
END
GO
/****** Object:  StoredProcedure [dbo].[GetEvenDetails]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEvenDetails](@TournamentID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select
tb.TournamentId,  e.EventName ,m.MarkeType ,om.Odds,bt.bettype,e.EventDate ,c.flagurl
from Market as m
inner join OddsMarket as om
on m.MarketId= om.MarketsId
inner join BettyepeMarkets bm
on bm.BetypeMarketID =m.MarketId
inner join TournamentBeTypes as tb
on tb.TournamentBetypeID = bm.BetTypeID
inner join Events as e
on e.TournamentID =tb.TournamentId
inner join BetTypes as bt
on tb.TournamentBetypeID=bt.betypeid
inner join SportTournament as sp
on sp.TournamentId=tb.TournamentId
inner join country as c
on c.countryid=sp.CountryId
where tb.TournamentId=@TournamentID

END
GO
/****** Object:  StoredProcedure [dbo].[GetEventAllDetails]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEventAllDetails]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select
c.name as[Country], 
c.countryid as[Country ID],
s.name[Sport],
t.name as[Tournament] , 
E.EventName as [Event],
E.EventDate as [Date],
E.EventId as [Event Id],
m.MarkeType as[Markets],
bt.bettype as [Bet Types]
from BettyepeMarkets as bm


inner join BetTypes as bt
on bm.BetTypeID=bt.betypeid
inner join Market as m
on m.MarketId=bm.BetypeMarketID
inner join TournamentBeTypes tb
on tb.TournamentBetypeID=bt.betypeid
inner join Tournament as t
on t.TournamentID=tb.TournamentId
inner join SportTournament as st
on st.TournamentId=tb.TournamentId
inner join sportTypes as s
on s.sportId=st.SportId
inner join Country  as c
on c.countryid= st.CountryId
inner join Events E
on E.TournamentID= st.TournamentId
where t.TournamentID=1
order by m.MarkeType




END
GO
/****** Object:  StoredProcedure [dbo].[GetSportCountry]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSportCountry](@SportId int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT c.name ,c.flagurl ,c.countryid
	FROM sportCountry as [sc]
	INNER JOIN Country as [c]
	on sc.CountryId= c.countryid
	where sc.SportId=@SportId
END
GO
/****** Object:  StoredProcedure [dbo].[GetSportTypes]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSportTypes]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sportTypes
END
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentEvents]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTournamentEvents](@TournamentID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from Events as E
	where E.TournamentID = @TournamentID
END
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentEventsByID]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTournamentEventsByID](@TournamentID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from Events as E
	where E.TournamentID = @TournamentID
END
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentEventsByTournamentId]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTournamentEventsByTournamentId](@TournamentID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from Events as E
	where E.TournamentID = @TournamentID
END
GO
/****** Object:  StoredProcedure [dbo].[OddsBasedOnTournament]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[OddsBasedOnTournament](@TournamentID int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct (O.OddsId) ,TB.TournamentId, BM.MarketID, E.EventId, O.ODDS, M.MarkeType , TB.TournamentBetypeID
	FROM TournamentBeTypes AS TB
	INNER JOIN BettyepeMarkets AS BM
	ON TB.TournamentBetypeID= BM.BetTypeID
	INNER JOIN Odds AS O
	ON O.MarketID=BM.MarketID
	INNER JOIN Events AS E 
	ON TB.TournamentId= E.TournamentID
	INNER JOIN Market AS M
	ON M.MarketId=O.MarketID
	WHERE TB.TournamentId=@TournamentID
END
GO
/****** Object:  StoredProcedure [dbo].[TournamentBetType]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TournamentBetType](@TournamentID int)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select BT.betypeid ,BT.bettype 
	from BetTypes as BT
	inner join TournamentBeTypes as TB
	on BT.betypeid =TB.TournamentBetypeID
	where TB.TournamentId=@TournamentID

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSportType]    Script Date: 2020/07/10 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSportType](@sportId int,@SportName nvarchar(100),@imageurl nvarchar(max))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE sportTypes
   SET   name=@SportName,
		 imageurl=@imageurl
   WHERE sportId=@sportId;


END
GO
USE [master]
GO
ALTER DATABASE [HollywoodbetsDB] SET  READ_WRITE 
GO
