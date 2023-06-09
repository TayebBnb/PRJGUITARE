USE [master]
GO
/****** Object:  Database [BDD_GUITARE]    Script Date: 21/05/2023 20:56:30 ******/
CREATE DATABASE [BDD_GUITARE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDD_GUITARE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDD_GUITARE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'BDD_GUITARE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDD_GUITARE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDD_GUITARE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDD_GUITARE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDD_GUITARE] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [BDD_GUITARE] SET ANSI_NULLS ON 
GO
ALTER DATABASE [BDD_GUITARE] SET ANSI_PADDING ON 
GO
ALTER DATABASE [BDD_GUITARE] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [BDD_GUITARE] SET ARITHABORT ON 
GO
ALTER DATABASE [BDD_GUITARE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDD_GUITARE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [BDD_GUITARE] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [BDD_GUITARE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [BDD_GUITARE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDD_GUITARE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDD_GUITARE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET RECOVERY FULL 
GO
ALTER DATABASE [BDD_GUITARE] SET  MULTI_USER 
GO
ALTER DATABASE [BDD_GUITARE] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [BDD_GUITARE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDD_GUITARE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDD_GUITARE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDD_GUITARE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDD_GUITARE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDD_GUITARE] SET QUERY_STORE = OFF
GO
USE [BDD_GUITARE]
GO
/****** Object:  Table [dbo].[BOIS]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOIS](
	[idBois] [int] IDENTITY(1,1) NOT NULL,
	[nomBois] [varchar](50) NULL,
	[poidsKg] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBois] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENT]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENT](
	[idClient] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[adresse] [nvarchar](256) NULL,
	[pseudo] [varchar](50) NULL,
	[mdp] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GUITARE]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GUITARE](
	[idGuitare] [int] IDENTITY(1,1) NOT NULL,
	[idTouche] [int] NULL,
	[idCorps] [int] NULL,
	[idManche] [int] NULL,
	[idMicroNeck] [int] NULL,
	[idMicroBridge] [int] NULL,
	[idClient] [int] NOT NULL,
	[idVibrato] [int] NULL,
	[idMicroCentral] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idGuitare] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MICRO]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MICRO](
	[idMicro] [int] IDENTITY(1,1) NOT NULL,
	[reference] [varchar](50) NULL,
	[marque] [varchar](50) NULL,
	[nomMicro] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMicro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIBRATO]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIBRATO](
	[idVibrato] [int] IDENTITY(1,1) NOT NULL,
	[nomVibrato] [varchar](50) NULL,
	[reference] [varchar](50) NULL,
	[marque] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVibrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idClient])
REFERENCES [dbo].[CLIENT] ([idClient])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idCorps])
REFERENCES [dbo].[BOIS] ([idBois])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idManche])
REFERENCES [dbo].[BOIS] ([idBois])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idMicroBridge])
REFERENCES [dbo].[MICRO] ([idMicro])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idMicroCentral])
REFERENCES [dbo].[MICRO] ([idMicro])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idMicroNeck])
REFERENCES [dbo].[MICRO] ([idMicro])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idTouche])
REFERENCES [dbo].[BOIS] ([idBois])
GO
ALTER TABLE [dbo].[GUITARE]  WITH CHECK ADD FOREIGN KEY([idVibrato])
REFERENCES [dbo].[VIBRATO] ([idVibrato])
GO
/****** Object:  StoredProcedure [dbo].[AddBois]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBois]
	@param1 int = 0,
	@param2 int
AS
	SELECT @param1, @param2
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[AjouterBois]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AjouterBois]
	@nomBois varchar(50), @poidsKg float
AS
BEGIN
	INSERT INTO  BOIS (nomBois, poidsKg)Values(@nomBois, @poidsKg)
END
GO
/****** Object:  StoredProcedure [dbo].[AjouterClient]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AjouterClient]
	@nom varchar(50), @prenom varchar(50), @adresse nvarchar(256),@pseudo varchar(50),@mdp nvarchar(256)
AS
BEGIN
	INSERT INTO CLIENT (nom,prenom,adresse,pseudo,mdp)Values(@nom,@prenom,@adresse,@pseudo,@mdp)
END
GO
/****** Object:  StoredProcedure [dbo].[AjouterGuitare]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AjouterGuitare]
	@toucheID int , @corpsID int, @mancheID int, @microNeckID int, @microBridgeID int, @microCentralID int , @vibratoID int , @clientID int 
AS
BEGIN
	INSERT INTO GUITARE(idCorps,idManche,idTouche,idMicroNeck,idMicroCentral,idMicroBridge,idVibrato,idClient) Values(@corpsID,@mancheID,@toucheID,@microNeckID,@microCentralID,@microBridgeID,@vibratoID,@clientID)
END
GO
/****** Object:  StoredProcedure [dbo].[AjouterMicro]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AjouterMicro]
	@reference varchar(50),@marque varchar(50),@nomMicro varchar(255)
AS
BEGIN
	INSERT INTO MICRO (reference,marque,nomMicro) Values(@reference,@marque,@nomMicro)
END
GO
/****** Object:  StoredProcedure [dbo].[AjouterVibrato]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AjouterVibrato]
	@nomVibrato varchar(50), @reference varchar(50), @marque varchar(50)
AS
BEGIN
	INSERT INTO  VIBRATO(nomVibrato, reference ,marque )Values(@nomVibrato, @reference,@marque)
END
GO
/****** Object:  StoredProcedure [dbo].[SupprimerBois]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SupprimerBois] @boisID int
AS
BEGIN

DELETE FROM BOIS where idBois = @boisID

END
GO
/****** Object:  StoredProcedure [dbo].[SupprimerClient]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SupprimerClient]
	@clientID int
AS
BEGIN
	DELETE FROM CLIENT WHERE idClient = @clientID
END
GO
/****** Object:  StoredProcedure [dbo].[SupprimerGuitare]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SupprimerGuitare]
	@guitareID  int
AS
BEGIN
	DELETE FROM GUITARE WHERE idGuitare=@guitareID
END
GO
/****** Object:  StoredProcedure [dbo].[SupprimerMicro]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SupprimerMicro]
	@microID int
AS
BEGIN
	DELETE FROM MICRO WHERE idMicro = @microID
END
GO
/****** Object:  StoredProcedure [dbo].[SupprimerVibrato]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SupprimerVibrato]
	@vibratoID int
AS
BEGIN
DELETE FROM VIBRATO WHERE idVibrato=@vibratoID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateBois]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateBois] @boisID int,  @nomBois varchar(50), @poidsKg float
AS
BEGIN
UPDATE BOIS SET
		nomBois = COALESCE(@nomBois,nomBois),
		poidsKg = COALESCE(@poidsKg,poidsKg)
		WHERE idBois =  @boisID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateClient]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateClient] @clientID int, @nom varchar(50),@prenom varchar(50), @adresse nvarchar(255), @pseudo varchar(50), @mdp varchar(255)
AS
BEGIN

UPDATE CLIENT SET 
            nom = COALESCE(@nom, nom), 
            prenom = COALESCE(@prenom, prenom), 
            adresse = COALESCE(@adresse, adresse),
            pseudo = COALESCE(@pseudo ,pseudo),
            mdp = COALESCE(@mdp,mdp)
            WHERE idClient = @clientID

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateGuitare]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateGuitare] @guitareID int , @toucheID int , @corpsID int , @mancheID int , @microNeckID int, @microBridgeID int, @clientID int, @vibratoID int, @microCentralID int 
	
AS
BEGIN
	UPDATE GUITARE SET
		idTouche = COALESCE (@toucheID , idTouche),
		idCorps = COALESCE (@corpsID , idCorps),
		idManche = COALESCE(@mancheID , idManche),
		idMicroNeck = COALESCE (@microNeckID , idMicroNeck),
		idMicroBridge = COALESCE (@microBridgeID , idMicroBridge),
		idClient = COALESCE (@clientID , idClient),
		idVibrato = COALESCE(@vibratoID,idVibrato),
		idMicroCentral = COALESCE(@microCentralID,idMicroCentral)
		WHERE idGuitare = @guitareID

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMicro]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMicro] @microID int, @reference varchar(50) , @marque varchar(50),@nomMicro varchar(255)
AS
BEGIN 
UPDATE MICRO SET
		reference = COALESCE (@reference, reference),
		marque = COALESCE (@marque, marque),
		nomMicro = COALESCE(@nomMicro,nomMicro)
		WHERE idMicro = @microID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateVibrato]    Script Date: 21/05/2023 20:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateVibrato] @vibratoID int, @nomVibrato varchar(50), @marque varchar(50), @reference varchar(50)
AS
BEGIN

UPDATE VIBRATO SET
		nomVibrato = COALESCE(@nomVibrato,nomVibrato),
		marque = COALESCE(@marque,marque),
		reference = COALESCE(@reference,reference)
		WHERE idVibrato=@vibratoID;
END
GO
USE [master]
GO
ALTER DATABASE [BDD_GUITARE] SET  READ_WRITE 
GO
