USE [master]
GO
/****** Object:  Database [ProyectoFinalBD]    Script Date: 14/12/2021 11:07:20 p. m. ******/
CREATE DATABASE [ProyectoFinalBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoFinalBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BDATOS\MSSQL\DATA\ProyectoFinalBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'ProyectoFinalBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BDATOS\MSSQL\DATA\ProyectoFinalBD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoFinalBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoFinalBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoFinalBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoFinalBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoFinalBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoFinalBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoFinalBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoFinalBD] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoFinalBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoFinalBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoFinalBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoFinalBD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProyectoFinalBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoFinalBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectoFinalBD', N'ON'
GO
ALTER DATABASE [ProyectoFinalBD] SET QUERY_STORE = OFF
GO
USE [ProyectoFinalBD]
GO
/****** Object:  Table [dbo].[detalledeventa]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalledeventa](
	[precio] [decimal](18, 0) NOT NULL,
	[cantidiad] [int] NOT NULL,
	[importe] [decimal](18, 0) NOT NULL,
	[folioventa_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Precio] [int] NOT NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Domicilio] [varchar](80) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[folioventa] [int] IDENTITY(1,1) NOT NULL,
	[subtotal] [decimal](18, 0) NOT NULL,
	[iva] [decimal](18, 0) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[fechaVenta] [date] NOT NULL,
	[sucursal_id] [int] NULL,
 CONSTRAINT [PK__venta__B81BBD20D64CFDD8] PRIMARY KEY CLUSTERED 
(
	[folioventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[detalledeventa] ([precio], [cantidiad], [importe], [folioventa_id], [producto_id]) VALUES (CAST(11 AS Decimal(18, 0)), 2, CAST(22 AS Decimal(18, 0)), 3, 2)
GO
INSERT [dbo].[detalledeventa] ([precio], [cantidiad], [importe], [folioventa_id], [producto_id]) VALUES (CAST(18 AS Decimal(18, 0)), 3, CAST(54 AS Decimal(18, 0)), 4, 1)
GO
INSERT [dbo].[detalledeventa] ([precio], [cantidiad], [importe], [folioventa_id], [producto_id]) VALUES (CAST(11 AS Decimal(18, 0)), 3, CAST(33 AS Decimal(18, 0)), 5, 2)
GO
INSERT [dbo].[detalledeventa] ([precio], [cantidiad], [importe], [folioventa_id], [producto_id]) VALUES (CAST(18 AS Decimal(18, 0)), 1, CAST(18 AS Decimal(18, 0)), 1, 3)
GO
INSERT [dbo].[detalledeventa] ([precio], [cantidiad], [importe], [folioventa_id], [producto_id]) VALUES (CAST(11 AS Decimal(18, 0)), 1, CAST(11 AS Decimal(18, 0)), 2, 2)
GO
SET IDENTITY_INSERT [dbo].[producto] ON 
GO
INSERT [dbo].[producto] ([ID], [Nombre], [Precio], [Status]) VALUES (1, N'Leche', 18, N'1')
GO
INSERT [dbo].[producto] ([ID], [Nombre], [Precio], [Status]) VALUES (2, N'Sabritas', 11, N'1')
GO
INSERT [dbo].[producto] ([ID], [Nombre], [Precio], [Status]) VALUES (3, N'Coca-Cola', 18, N'1')
GO
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
SET IDENTITY_INSERT [dbo].[sucursal] ON 
GO
INSERT [dbo].[sucursal] ([ID], [Nombre], [Domicilio], [Status]) VALUES (1, N'Matriz', N'Calle Oro # 32 Colonia Centro', N'1')
GO
INSERT [dbo].[sucursal] ([ID], [Nombre], [Domicilio], [Status]) VALUES (2, N'Obregón', N'Avenida Alvaro Obregón Colonia Colosio', N'1')
GO
SET IDENTITY_INSERT [dbo].[sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[venta] ON 
GO
INSERT [dbo].[venta] ([folioventa], [subtotal], [iva], [total], [fechaVenta], [sucursal_id]) VALUES (1, CAST(18 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), CAST(N'2021-12-13' AS Date), 1)
GO
INSERT [dbo].[venta] ([folioventa], [subtotal], [iva], [total], [fechaVenta], [sucursal_id]) VALUES (2, CAST(11 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(13 AS Decimal(18, 0)), CAST(N'2021-12-13' AS Date), 2)
GO
INSERT [dbo].[venta] ([folioventa], [subtotal], [iva], [total], [fechaVenta], [sucursal_id]) VALUES (3, CAST(22 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(26 AS Decimal(18, 0)), CAST(N'2021-12-13' AS Date), 1)
GO
INSERT [dbo].[venta] ([folioventa], [subtotal], [iva], [total], [fechaVenta], [sucursal_id]) VALUES (4, CAST(54 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(63 AS Decimal(18, 0)), CAST(N'2021-12-14' AS Date), 1)
GO
INSERT [dbo].[venta] ([folioventa], [subtotal], [iva], [total], [fechaVenta], [sucursal_id]) VALUES (5, CAST(33 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(38 AS Decimal(18, 0)), CAST(N'2021-12-14' AS Date), 2)
GO
SET IDENTITY_INSERT [dbo].[venta] OFF
GO
ALTER TABLE [dbo].[detalledeventa]  WITH CHECK ADD  CONSTRAINT [FK_detalledeventa_producto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[producto] ([ID])
GO
ALTER TABLE [dbo].[detalledeventa] CHECK CONSTRAINT [FK_detalledeventa_producto]
GO
ALTER TABLE [dbo].[detalledeventa]  WITH CHECK ADD  CONSTRAINT [FK_detalledeventa_venta] FOREIGN KEY([folioventa_id])
REFERENCES [dbo].[venta] ([folioventa])
GO
ALTER TABLE [dbo].[detalledeventa] CHECK CONSTRAINT [FK_detalledeventa_venta]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_sucursal] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([ID])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_sucursal]
GO
/****** Object:  StoredProcedure [dbo].[agregarDetalleVenta]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregarDetalleVenta]
@folioventa int,
@productoid int,
@cantidad int
AS
BEGIN
	declare @precio int
	declare @importe int

	set @precio = (SELECT Precio from producto where @productoid = ID)
	set @importe = @precio*@cantidad

	SET NOCOUNT ON;
	insert into detalledeventa(folioventa_id,producto_id,precio,cantidiad,importe)
	values(@folioventa,@productoid,@precio,@cantidad,@importe)
	
END
GO
/****** Object:  StoredProcedure [dbo].[agregarVentaTest]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregarVentaTest]
@subtotal int,
@sucursal_id int
AS
BEGIN
	declare @iva decimal
	declare @total decimal

	set @iva = @subtotal*.16
	set @total = @subtotal+@iva

	SET NOCOUNT ON;
	insert into venta(sucursal_id,subtotal,iva,total,fechaVenta)
	values(@sucursal_id,@subtotal,@iva,@total,GETDATE())
    
END
GO
/****** Object:  StoredProcedure [dbo].[detalleventaModificar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[detalleventaModificar]
@folioventa int,
@productoid int,
@cantidad int

AS
BEGIN
	declare @precio int
	declare @importe int

	set @precio = (SELECT Precio from producto where @productoid = ID)
	set @importe = @precio*@cantidad
	
	SET NOCOUNT ON;
	update detalledeventa
	set folioventa_id = @folioventa,
		producto_id = @productoid,
		precio = @precio,
		cantidiad = @cantidad,
		importe = @importe
	
	where (folioventa_id = @folioventa) AND (producto_id = @productoid)

END
GO
/****** Object:  StoredProcedure [dbo].[detalleventaMostrar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[detalleventaMostrar]

AS
BEGIN
	

	SET NOCOUNT ON;
	select folioventa_id, producto_id, precio, cantidiad, importe 
	from detalledeventa
	order by folioventa_id asc

END
GO
/****** Object:  StoredProcedure [dbo].[productoAgregar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[productoAgregar] 
@nombre varchar(50),
@precio int
AS
BEGIN
	set nocount on;
	insert into producto(Nombre, Precio, Status)
	values(@nombre, @precio, 1)
	set IDENTITY_INSERT producto ON
END
GO
/****** Object:  StoredProcedure [dbo].[productoModificar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[productoModificar]
@ID int,
@nombre varchar(50),
@precio int,
@estatus bit
AS
BEGIN
	set nocount on;
	update producto
	set Nombre = @nombre,
		Precio = @precio,
		Status = @estatus

	where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[productoMostrar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[productoMostrar]

AS
BEGIN
	set nocount on;
	select ID, Nombre, Precio, Status
	from producto
END
GO
/****** Object:  StoredProcedure [dbo].[reportecuatro]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reportecuatro]
@folioventa int
AS
BEGIN
	
	SET NOCOUNT ON;
	select D.folioventa_id as "Folio Venta", 
	P.Nombre as "Nombre del Producto", P.Precio, 
	D.cantidiad as "Cantidad", D.importe from 
	detalledeventa D inner join producto P on D.folioventa_id = @folioventa and D.producto_id = P.ID

END
GO
/****** Object:  StoredProcedure [dbo].[reportedos]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reportedos]
@fecha date

AS
BEGIN
	
	SET NOCOUNT ON;
	select V.fechaVenta as "Fecha de venta",
	D.folioventa_id as "Folio de venta", D.producto_id, D.precio,
	D.cantidiad as "Cantidad de Productos",D.importe from detalledeventa D 
	inner join venta V on V.fechaVenta = @fecha and V.folioventa = D.folioventa_id 
	order by D.folioventa_id asc
    
END
GO
/****** Object:  StoredProcedure [dbo].[reportetres]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reportetres]
AS
BEGIN
	
	SET NOCOUNT ON;
	select top 3 D.producto_id, P.Nombre, 
	sum (D.cantidiad) as vendido
	from detalledeventa D inner join producto P on D.producto_id = P.ID 
	group by  D.producto_id,P.Nombre
	order by SUM(D.cantidiad) desc

END
GO
/****** Object:  StoredProcedure [dbo].[reporteuno]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reporteuno]
@fechainicial date,
@fechafinal date,
@idsucursal int
AS
BEGIN

	SET NOCOUNT ON;
	select * from venta
	where (fechaVenta between CAST(@fechainicial as date)and cast(@fechafinal as date)) and (sucursal_id = @idsucursal)
	order by folioventa asc

END
GO
/****** Object:  StoredProcedure [dbo].[sucursalAgregar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sucursalAgregar]
@nombre varchar(50),
@domicilio varchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into sucursal(Nombre,Domicilio,Status)
	values(@nombre, @domicilio, 1)
	set IDENTITY_INSERT producto ON
END
GO
/****** Object:  StoredProcedure [dbo].[sucursalModificar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sucursalModificar]
@id int,
@nombre varchar(50),
@domicilio varchar(50),
@estatus bit
	
AS
BEGIN
	
	SET NOCOUNT ON;
	update sucursal
	set Nombre = @nombre,
		Domicilio = @domicilio,
		Status = @estatus

	where ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[sucursalMostrar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sucursalMostrar]

	
AS
BEGIN
	
	SET NOCOUNT ON;
	select ID, Nombre, Domicilio, Status
	from sucursal
END
GO
/****** Object:  StoredProcedure [dbo].[ventaModificar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ventaModificar]
@folioventa int,
@subtotal int,
@sucursalid int
AS
BEGIN
	declare @iva decimal
	declare @total decimal

	set @iva = @subtotal*.16
	set @total = @subtotal+@iva

	SET NOCOUNT ON;
	update venta
	set subtotal = @subtotal,
		iva = @iva,
		total = @total,
		fechaVenta = GETDATE(),
		sucursal_id = @sucursalid

	where folioventa = @folioventa

END
GO
/****** Object:  StoredProcedure [dbo].[ventaMostrar]    Script Date: 14/12/2021 11:07:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ventaMostrar]

AS
BEGIN
	

	SET NOCOUNT ON;
	select folioventa, subtotal, iva, total, fechaVenta, sucursal_id
	from venta

END
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinalBD] SET  READ_WRITE 
GO
