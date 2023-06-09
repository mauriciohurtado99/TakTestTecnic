USE [master]
GO
/****** Object:  Database [Tak]    Script Date: 29/03/2023 00:12:46 ******/
CREATE DATABASE [Tak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tak', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SA\MSSQL\DATA\Tak.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tak_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SA\MSSQL\DATA\Tak_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Tak] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tak] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tak] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tak] SET RECOVERY FULL 
GO
ALTER DATABASE [Tak] SET  MULTI_USER 
GO
ALTER DATABASE [Tak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tak] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tak] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tak] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tak', N'ON'
GO
ALTER DATABASE [Tak] SET QUERY_STORE = ON
GO
ALTER DATABASE [Tak] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Tak]
GO
/****** Object:  Table [dbo].[colaboradores]    Script Date: 29/03/2023 11:42:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colaboradores](
	[id] [int] NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[estado_civil] [varchar](20) NOT NULL,
	[grado_academico] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (2, N'María', N'García', CAST(N'1985-10-22' AS Date), N'Casada', N'Ingeniera en Sistemas', N'18 calle 13-24 zona 13')
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (3, N'Mau', N'hurtado', CAST(N'1999-05-15' AS Date), N'Soltero', N'Licenciado en Administración', N'8 avenida 0-38 zona 2, Colonia El Tesoro, Mixco')
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (4, N'Pepito', N'perz', CAST(N'1990-05-15' AS Date), N'Casado', N'Bachiller', N'24 av 3-28 zona 3 ')
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (5, N'Juan Pedro', N'zavala', CAST(N'2004-09-05' AS Date), N'Soltero', N'Licenciado en Administración ll', N'Av.12 col la ref')
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (6, N'Lucia', N'Velazques', CAST(N'1996-08-28' AS Date), N'Soltero', N'Licenciada en Ciencias de la Comunicacion', N'13-24 zona 5 ')
INSERT [dbo].[colaboradores] ([id], [nombres], [apellidos], [fecha_nacimiento], [estado_civil], [grado_academico], [direccion]) VALUES (7, N'Marlon', N'Perez', CAST(N'1990-05-24' AS Date), N'Soltero', N'Bachiller', N'Av. 123')
GO
USE [master]
GO
ALTER DATABASE [Tak] SET  READ_WRITE 
GO
