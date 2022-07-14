USE [master]
GO
/****** Object:  Database [FakturniakDB]    Script Date: 14.07.2022 17:47:44 ******/
CREATE DATABASE [FakturniakDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FakturniakDB', FILENAME = N'E:\SQL-Instances\MSSQL15.FAKTURNIAKDB\MSSQL\DATA\FakturniakDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FakturniakDB_log', FILENAME = N'E:\SQL-Instances\MSSQL15.FAKTURNIAKDB\MSSQL\DATA\FakturniakDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FakturniakDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FakturniakDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FakturniakDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FakturniakDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FakturniakDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FakturniakDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FakturniakDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FakturniakDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FakturniakDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FakturniakDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FakturniakDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FakturniakDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FakturniakDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FakturniakDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FakturniakDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FakturniakDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FakturniakDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FakturniakDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FakturniakDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FakturniakDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FakturniakDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FakturniakDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FakturniakDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FakturniakDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FakturniakDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FakturniakDB] SET  MULTI_USER 
GO
ALTER DATABASE [FakturniakDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FakturniakDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FakturniakDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FakturniakDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FakturniakDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FakturniakDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FakturniakDB] SET QUERY_STORE = OFF
GO
ALTER DATABASE [FakturniakDB] SET  READ_WRITE 
GO
