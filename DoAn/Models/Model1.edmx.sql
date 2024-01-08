
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/06/2024 11:01:13
-- Generated from EDMX file: D:\New folder\BanHangOnlineASPNET-main (1)\BanHangOnlineASPNET-main\DoAn\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [onlineTrade];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[fk_baiViet_id_anh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[baiViets] DROP CONSTRAINT [fk_baiViet_id_anh];
GO
IF OBJECT_ID(N'[dbo].[fk_sanPham_id_anh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sanPhams] DROP CONSTRAINT [fk_sanPham_id_anh];
GO
IF OBJECT_ID(N'[dbo].[fk_binhLuan_id_binhLuan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[binhLuans] DROP CONSTRAINT [fk_binhLuan_id_binhLuan];
GO
IF OBJECT_ID(N'[dbo].[fk_binhLuan_id_sanPham]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[binhLuans] DROP CONSTRAINT [fk_binhLuan_id_sanPham];
GO
IF OBJECT_ID(N'[dbo].[fk_binhLuan_id_taiKhoan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[binhLuans] DROP CONSTRAINT [fk_binhLuan_id_taiKhoan];
GO
IF OBJECT_ID(N'[dbo].[fk_chiTietDH_id_donHang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[chiTietDHs] DROP CONSTRAINT [fk_chiTietDH_id_donHang];
GO
IF OBJECT_ID(N'[dbo].[fk_chiTietDH_id_taiKhoan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[chiTietDHs] DROP CONSTRAINT [fk_chiTietDH_id_taiKhoan];
GO
IF OBJECT_ID(N'[dbo].[fk_donHang_id_PhuongXa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[donHangs] DROP CONSTRAINT [fk_donHang_id_PhuongXa];
GO
IF OBJECT_ID(N'[dbo].[fk_donHang_id_QuanHuyen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[donHangs] DROP CONSTRAINT [fk_donHang_id_QuanHuyen];
GO
IF OBJECT_ID(N'[dbo].[fk_donHang_id_taiKhoan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[donHangs] DROP CONSTRAINT [fk_donHang_id_taiKhoan];
GO
IF OBJECT_ID(N'[dbo].[fk_donHang_id_TinhThanh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[donHangs] DROP CONSTRAINT [fk_donHang_id_TinhThanh];
GO
IF OBJECT_ID(N'[dbo].[fk_loaiSP_id_loaiSP]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[loaiSPs] DROP CONSTRAINT [fk_loaiSP_id_loaiSP];
GO
IF OBJECT_ID(N'[dbo].[fk_sanPham_id_theLoai]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sanPhams] DROP CONSTRAINT [fk_sanPham_id_theLoai];
GO
IF OBJECT_ID(N'[dbo].[FK_Ward_District]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhuongXas] DROP CONSTRAINT [FK_Ward_District];
GO
IF OBJECT_ID(N'[dbo].[FK_District_Province]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuanHuyens] DROP CONSTRAINT [FK_District_Province];
GO
IF OBJECT_ID(N'[dbo].[FK_thuVienAnhSP_anh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[thuVienAnhSP] DROP CONSTRAINT [FK_thuVienAnhSP_anh];
GO
IF OBJECT_ID(N'[dbo].[FK_thuVienAnhSP_sanPham]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[thuVienAnhSP] DROP CONSTRAINT [FK_thuVienAnhSP_sanPham];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[anhs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[anhs];
GO
IF OBJECT_ID(N'[dbo].[baiViets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[baiViets];
GO
IF OBJECT_ID(N'[dbo].[binhLuans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[binhLuans];
GO
IF OBJECT_ID(N'[dbo].[chiTietDHs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[chiTietDHs];
GO
IF OBJECT_ID(N'[dbo].[donHangs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[donHangs];
GO
IF OBJECT_ID(N'[dbo].[loaiSPs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[loaiSPs];
GO
IF OBJECT_ID(N'[dbo].[PhuongXas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhuongXas];
GO
IF OBJECT_ID(N'[dbo].[QuanHuyens]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuanHuyens];
GO
IF OBJECT_ID(N'[dbo].[sanPhams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sanPhams];
GO
IF OBJECT_ID(N'[dbo].[taiKhoans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[taiKhoans];
GO
IF OBJECT_ID(N'[dbo].[TinhThanhs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TinhThanhs];
GO
IF OBJECT_ID(N'[dbo].[thuVienAnhSP]', 'U') IS NOT NULL
    DROP TABLE [dbo].[thuVienAnhSP];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'anhs'
CREATE TABLE [dbo].[anhs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Url] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'baiViets'
CREATE TABLE [dbo].[baiViets] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [tenBV] nvarchar(168)  NOT NULL,
    [tenDuongDan] varchar(168)  NULL,
    [ngayDang] datetime  NOT NULL,
    [ngayCapNhat] datetime  NOT NULL,
    [tomTat] nvarchar(max)  NULL,
    [anhBia] int  NOT NULL,
    [noiDungBV] nvarchar(max)  NULL,
    [hienThi] bit  NOT NULL,
    [soLanDoc] int  NULL
);
GO

-- Creating table 'binhLuans'
CREATE TABLE [dbo].[binhLuans] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [maSP] int  NOT NULL,
    [maTK] int  NOT NULL,
    [binhLuan1] nvarchar(max)  NOT NULL,
    [phanHoi] int  NULL
);
GO

-- Creating table 'chiTietDHs'
CREATE TABLE [dbo].[chiTietDHs] (
    [maDH] int  NOT NULL,
    [maSP] int  NOT NULL,
    [soLuong] int  NOT NULL,
    [giaBan] int  NOT NULL,
    [danhGia] int  NULL
);
GO

-- Creating table 'donHangs'
CREATE TABLE [dbo].[donHangs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [khachHang] int  NOT NULL,
    [dcGiaoHang] nvarchar(max)  NULL,
    [maPhuong] int  NOT NULL,
    [maQuan] int  NOT NULL,
    [maTP] int  NOT NULL,
    [xuatHD] bit  NOT NULL,
    [ngayDatHang] datetime  NOT NULL,
    [ngayGiaoHang] datetime  NULL,
    [thanhCong] bit  NULL,
    [dvVanChuyen] nvarchar(30)  NULL,
    [maVanChuyen] nvarchar(100)  NULL,
    [phiShip] int  NULL,
    [ghiChuKhach] nvarchar(max)  NULL,
    [ghiChuShop] nvarchar(max)  NULL
);
GO

-- Creating table 'loaiSPs'
CREATE TABLE [dbo].[loaiSPs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [tenLoai] nvarchar(168)  NOT NULL,
    [tenDuongDan] varchar(168)  NULL,
    [ghiChu] nvarchar(max)  NULL,
    [cha] int  NULL
);
GO

-- Creating table 'PhuongXas'
CREATE TABLE [dbo].[PhuongXas] (
    [Id] int  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Type] nvarchar(50)  NULL,
    [QuanHuyen] int  NOT NULL
);
GO

-- Creating table 'QuanHuyens'
CREATE TABLE [dbo].[QuanHuyens] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(250)  NULL,
    [Type] nvarchar(50)  NULL,
    [TinhThanh] int  NOT NULL
);
GO

-- Creating table 'sanPhams'
CREATE TABLE [dbo].[sanPhams] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [maLoai] int  NULL,
    [tenSP] nvarchar(468)  NOT NULL,
    [tenDuongDan] varchar(468)  NULL,
    [tomTat] nvarchar(468)  NULL,
    [ngayDangSP] datetime  NOT NULL,
    [giaBan] int  NOT NULL,
    [giaKM] int  NULL,
    [dvt] nvarchar(68)  NOT NULL,
    [khuyenMai] nvarchar(279)  NULL,
    [soLuong] int  NOT NULL,
    [anhBia] int  NULL,
    [ndSanPham] nvarchar(max)  NULL,
    [luotXem] int  NULL,
    [luotMua] int  NULL,
    [dangSP] bit  NOT NULL
);
GO

-- Creating table 'taiKhoans'
CREATE TABLE [dbo].[taiKhoans] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [HoTen] nvarchar(30)  NOT NULL,
    [tenTK] varchar(16)  NOT NULL,
    [matKhau] nvarchar(32)  NOT NULL,
    [ngayCap] datetime  NOT NULL,
    [gioiTinh] bit  NOT NULL,
    [SDT] varchar(15)  NOT NULL,
    [email] varchar(95)  NOT NULL,
    [duocSD] bit  NOT NULL,
    [ghiChu] nvarchar(max)  NULL,
    [vaiTro] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'TinhThanhs'
CREATE TABLE [dbo].[TinhThanhs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(250)  NOT NULL,
    [Type] nvarchar(20)  NULL
);
GO

-- Creating table 'thuVienAnhSP'
CREATE TABLE [dbo].[thuVienAnhSP] (
    [anhs_ID] int  NOT NULL,
    [sanPhams1_ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'anhs'
ALTER TABLE [dbo].[anhs]
ADD CONSTRAINT [PK_anhs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'baiViets'
ALTER TABLE [dbo].[baiViets]
ADD CONSTRAINT [PK_baiViets]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'binhLuans'
ALTER TABLE [dbo].[binhLuans]
ADD CONSTRAINT [PK_binhLuans]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [maDH], [maSP] in table 'chiTietDHs'
ALTER TABLE [dbo].[chiTietDHs]
ADD CONSTRAINT [PK_chiTietDHs]
    PRIMARY KEY CLUSTERED ([maDH], [maSP] ASC);
GO

-- Creating primary key on [ID] in table 'donHangs'
ALTER TABLE [dbo].[donHangs]
ADD CONSTRAINT [PK_donHangs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'loaiSPs'
ALTER TABLE [dbo].[loaiSPs]
ADD CONSTRAINT [PK_loaiSPs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'PhuongXas'
ALTER TABLE [dbo].[PhuongXas]
ADD CONSTRAINT [PK_PhuongXas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuanHuyens'
ALTER TABLE [dbo].[QuanHuyens]
ADD CONSTRAINT [PK_QuanHuyens]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'sanPhams'
ALTER TABLE [dbo].[sanPhams]
ADD CONSTRAINT [PK_sanPhams]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'taiKhoans'
ALTER TABLE [dbo].[taiKhoans]
ADD CONSTRAINT [PK_taiKhoans]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'TinhThanhs'
ALTER TABLE [dbo].[TinhThanhs]
ADD CONSTRAINT [PK_TinhThanhs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [anhs_ID], [sanPhams1_ID] in table 'thuVienAnhSP'
ALTER TABLE [dbo].[thuVienAnhSP]
ADD CONSTRAINT [PK_thuVienAnhSP]
    PRIMARY KEY CLUSTERED ([anhs_ID], [sanPhams1_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [anhBia] in table 'baiViets'
ALTER TABLE [dbo].[baiViets]
ADD CONSTRAINT [fk_baiViet_id_anh]
    FOREIGN KEY ([anhBia])
    REFERENCES [dbo].[anhs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_baiViet_id_anh'
CREATE INDEX [IX_fk_baiViet_id_anh]
ON [dbo].[baiViets]
    ([anhBia]);
GO

-- Creating foreign key on [anhBia] in table 'sanPhams'
ALTER TABLE [dbo].[sanPhams]
ADD CONSTRAINT [fk_sanPham_id_anh]
    FOREIGN KEY ([anhBia])
    REFERENCES [dbo].[anhs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_sanPham_id_anh'
CREATE INDEX [IX_fk_sanPham_id_anh]
ON [dbo].[sanPhams]
    ([anhBia]);
GO

-- Creating foreign key on [phanHoi] in table 'binhLuans'
ALTER TABLE [dbo].[binhLuans]
ADD CONSTRAINT [fk_binhLuan_id_binhLuan]
    FOREIGN KEY ([phanHoi])
    REFERENCES [dbo].[binhLuans]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_binhLuan_id_binhLuan'
CREATE INDEX [IX_fk_binhLuan_id_binhLuan]
ON [dbo].[binhLuans]
    ([phanHoi]);
GO

-- Creating foreign key on [maSP] in table 'binhLuans'
ALTER TABLE [dbo].[binhLuans]
ADD CONSTRAINT [fk_binhLuan_id_sanPham]
    FOREIGN KEY ([maSP])
    REFERENCES [dbo].[sanPhams]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_binhLuan_id_sanPham'
CREATE INDEX [IX_fk_binhLuan_id_sanPham]
ON [dbo].[binhLuans]
    ([maSP]);
GO

-- Creating foreign key on [maTK] in table 'binhLuans'
ALTER TABLE [dbo].[binhLuans]
ADD CONSTRAINT [fk_binhLuan_id_taiKhoan]
    FOREIGN KEY ([maTK])
    REFERENCES [dbo].[taiKhoans]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_binhLuan_id_taiKhoan'
CREATE INDEX [IX_fk_binhLuan_id_taiKhoan]
ON [dbo].[binhLuans]
    ([maTK]);
GO

-- Creating foreign key on [maDH] in table 'chiTietDHs'
ALTER TABLE [dbo].[chiTietDHs]
ADD CONSTRAINT [fk_chiTietDH_id_donHang]
    FOREIGN KEY ([maDH])
    REFERENCES [dbo].[donHangs]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [maSP] in table 'chiTietDHs'
ALTER TABLE [dbo].[chiTietDHs]
ADD CONSTRAINT [fk_chiTietDH_id_taiKhoan]
    FOREIGN KEY ([maSP])
    REFERENCES [dbo].[sanPhams]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_chiTietDH_id_taiKhoan'
CREATE INDEX [IX_fk_chiTietDH_id_taiKhoan]
ON [dbo].[chiTietDHs]
    ([maSP]);
GO

-- Creating foreign key on [maPhuong] in table 'donHangs'
ALTER TABLE [dbo].[donHangs]
ADD CONSTRAINT [fk_donHang_id_PhuongXa]
    FOREIGN KEY ([maPhuong])
    REFERENCES [dbo].[PhuongXas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_donHang_id_PhuongXa'
CREATE INDEX [IX_fk_donHang_id_PhuongXa]
ON [dbo].[donHangs]
    ([maPhuong]);
GO

-- Creating foreign key on [maQuan] in table 'donHangs'
ALTER TABLE [dbo].[donHangs]
ADD CONSTRAINT [fk_donHang_id_QuanHuyen]
    FOREIGN KEY ([maQuan])
    REFERENCES [dbo].[QuanHuyens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_donHang_id_QuanHuyen'
CREATE INDEX [IX_fk_donHang_id_QuanHuyen]
ON [dbo].[donHangs]
    ([maQuan]);
GO

-- Creating foreign key on [khachHang] in table 'donHangs'
ALTER TABLE [dbo].[donHangs]
ADD CONSTRAINT [fk_donHang_id_taiKhoan]
    FOREIGN KEY ([khachHang])
    REFERENCES [dbo].[taiKhoans]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_donHang_id_taiKhoan'
CREATE INDEX [IX_fk_donHang_id_taiKhoan]
ON [dbo].[donHangs]
    ([khachHang]);
GO

-- Creating foreign key on [maTP] in table 'donHangs'
ALTER TABLE [dbo].[donHangs]
ADD CONSTRAINT [fk_donHang_id_TinhThanh]
    FOREIGN KEY ([maTP])
    REFERENCES [dbo].[TinhThanhs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_donHang_id_TinhThanh'
CREATE INDEX [IX_fk_donHang_id_TinhThanh]
ON [dbo].[donHangs]
    ([maTP]);
GO

-- Creating foreign key on [cha] in table 'loaiSPs'
ALTER TABLE [dbo].[loaiSPs]
ADD CONSTRAINT [fk_loaiSP_id_loaiSP]
    FOREIGN KEY ([cha])
    REFERENCES [dbo].[loaiSPs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_loaiSP_id_loaiSP'
CREATE INDEX [IX_fk_loaiSP_id_loaiSP]
ON [dbo].[loaiSPs]
    ([cha]);
GO

-- Creating foreign key on [maLoai] in table 'sanPhams'
ALTER TABLE [dbo].[sanPhams]
ADD CONSTRAINT [fk_sanPham_id_theLoai]
    FOREIGN KEY ([maLoai])
    REFERENCES [dbo].[loaiSPs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_sanPham_id_theLoai'
CREATE INDEX [IX_fk_sanPham_id_theLoai]
ON [dbo].[sanPhams]
    ([maLoai]);
GO

-- Creating foreign key on [QuanHuyen] in table 'PhuongXas'
ALTER TABLE [dbo].[PhuongXas]
ADD CONSTRAINT [FK_Ward_District]
    FOREIGN KEY ([QuanHuyen])
    REFERENCES [dbo].[QuanHuyens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Ward_District'
CREATE INDEX [IX_FK_Ward_District]
ON [dbo].[PhuongXas]
    ([QuanHuyen]);
GO

-- Creating foreign key on [TinhThanh] in table 'QuanHuyens'
ALTER TABLE [dbo].[QuanHuyens]
ADD CONSTRAINT [FK_District_Province]
    FOREIGN KEY ([TinhThanh])
    REFERENCES [dbo].[TinhThanhs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_District_Province'
CREATE INDEX [IX_FK_District_Province]
ON [dbo].[QuanHuyens]
    ([TinhThanh]);
GO

-- Creating foreign key on [anhs_ID] in table 'thuVienAnhSP'
ALTER TABLE [dbo].[thuVienAnhSP]
ADD CONSTRAINT [FK_thuVienAnhSP_anh]
    FOREIGN KEY ([anhs_ID])
    REFERENCES [dbo].[anhs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [sanPhams1_ID] in table 'thuVienAnhSP'
ALTER TABLE [dbo].[thuVienAnhSP]
ADD CONSTRAINT [FK_thuVienAnhSP_sanPham]
    FOREIGN KEY ([sanPhams1_ID])
    REFERENCES [dbo].[sanPhams]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_thuVienAnhSP_sanPham'
CREATE INDEX [IX_FK_thuVienAnhSP_sanPham]
ON [dbo].[thuVienAnhSP]
    ([sanPhams1_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------