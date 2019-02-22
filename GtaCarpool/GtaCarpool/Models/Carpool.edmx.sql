
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/22/2019 09:23:32
-- Generated from EDMX file: C:\Github\Weite\GtaCarpool\GtaCarpool\Models\Carpool.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CarpoolSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Drivers'
CREATE TABLE [dbo].[Drivers] (
    [DriverId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Phone] bigint  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [AskPrice] decimal(18,0)  NOT NULL,
    [Car_CarId] int  NOT NULL,
    [PickupDeliver_StsId] int  NOT NULL
);
GO

-- Creating table 'Cars'
CREATE TABLE [dbo].[Cars] (
    [CarId] int IDENTITY(1,1) NOT NULL,
    [Color] nvarchar(max)  NOT NULL,
    [CarMake_Id] int  NOT NULL
);
GO

-- Creating table 'CarMakes'
CREATE TABLE [dbo].[CarMakes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Manufactory] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PickupDelivers'
CREATE TABLE [dbo].[PickupDelivers] (
    [StsId] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [CityId] int IDENTITY(1,1) NOT NULL,
    [CityName] nvarchar(max)  NOT NULL,
    [Province_Id] int  NOT NULL
);
GO

-- Creating table 'Provinces'
CREATE TABLE [dbo].[Provinces] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ProvinceName] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [DriverId] in table 'Drivers'
ALTER TABLE [dbo].[Drivers]
ADD CONSTRAINT [PK_Drivers]
    PRIMARY KEY CLUSTERED ([DriverId] ASC);
GO

-- Creating primary key on [CarId] in table 'Cars'
ALTER TABLE [dbo].[Cars]
ADD CONSTRAINT [PK_Cars]
    PRIMARY KEY CLUSTERED ([CarId] ASC);
GO

-- Creating primary key on [Id] in table 'CarMakes'
ALTER TABLE [dbo].[CarMakes]
ADD CONSTRAINT [PK_CarMakes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [StsId] in table 'PickupDelivers'
ALTER TABLE [dbo].[PickupDelivers]
ADD CONSTRAINT [PK_PickupDelivers]
    PRIMARY KEY CLUSTERED ([StsId] ASC);
GO

-- Creating primary key on [CityId] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([CityId] ASC);
GO

-- Creating primary key on [Id] in table 'Provinces'
ALTER TABLE [dbo].[Provinces]
ADD CONSTRAINT [PK_Provinces]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Car_CarId] in table 'Drivers'
ALTER TABLE [dbo].[Drivers]
ADD CONSTRAINT [FK_CarDriver]
    FOREIGN KEY ([Car_CarId])
    REFERENCES [dbo].[Cars]
        ([CarId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarDriver'
CREATE INDEX [IX_FK_CarDriver]
ON [dbo].[Drivers]
    ([Car_CarId]);
GO

-- Creating foreign key on [PickupDeliver_StsId] in table 'Drivers'
ALTER TABLE [dbo].[Drivers]
ADD CONSTRAINT [FK_PickupDeliverDriver]
    FOREIGN KEY ([PickupDeliver_StsId])
    REFERENCES [dbo].[PickupDelivers]
        ([StsId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PickupDeliverDriver'
CREATE INDEX [IX_FK_PickupDeliverDriver]
ON [dbo].[Drivers]
    ([PickupDeliver_StsId]);
GO

-- Creating foreign key on [CarMake_Id] in table 'Cars'
ALTER TABLE [dbo].[Cars]
ADD CONSTRAINT [FK_CarMakeCar]
    FOREIGN KEY ([CarMake_Id])
    REFERENCES [dbo].[CarMakes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarMakeCar'
CREATE INDEX [IX_FK_CarMakeCar]
ON [dbo].[Cars]
    ([CarMake_Id]);
GO

-- Creating foreign key on [Province_Id] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [FK_ProvinceCity]
    FOREIGN KEY ([Province_Id])
    REFERENCES [dbo].[Provinces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvinceCity'
CREATE INDEX [IX_FK_ProvinceCity]
ON [dbo].[Cities]
    ([Province_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------