
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/10/2021 17:11:45
-- Generated from EDMX file: C:\Users\HP\source\repos\BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI\BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI\DBFirst.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [bezai_mohammed_examfinal];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClientCompte]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompteSet] DROP CONSTRAINT [FK_ClientCompte];
GO
IF OBJECT_ID(N'[dbo].[FK_CompteOpération]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OpérationSet] DROP CONSTRAINT [FK_CompteOpération];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ClientSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientSet1];
GO
IF OBJECT_ID(N'[dbo].[CompteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompteSet];
GO
IF OBJECT_ID(N'[dbo].[OpérationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OpérationSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ClientSet1'
CREATE TABLE [dbo].[ClientSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [log] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CompteSet'
CREATE TABLE [dbo].[CompteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [date_creation] nvarchar(max)  NOT NULL,
    [solde] nvarchar(max)  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'OpérationSet'
CREATE TABLE [dbo].[OpérationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [date] datetime  NOT NULL,
    [montant] nvarchar(max)  NOT NULL,
    [Compte_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ClientSet1'
ALTER TABLE [dbo].[ClientSet1]
ADD CONSTRAINT [PK_ClientSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CompteSet'
ALTER TABLE [dbo].[CompteSet]
ADD CONSTRAINT [PK_CompteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OpérationSet'
ALTER TABLE [dbo].[OpérationSet]
ADD CONSTRAINT [PK_OpérationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Client_Id] in table 'CompteSet'
ALTER TABLE [dbo].[CompteSet]
ADD CONSTRAINT [FK_ClientCompte]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[ClientSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientCompte'
CREATE INDEX [IX_FK_ClientCompte]
ON [dbo].[CompteSet]
    ([Client_Id]);
GO

-- Creating foreign key on [Compte_Id] in table 'OpérationSet'
ALTER TABLE [dbo].[OpérationSet]
ADD CONSTRAINT [FK_CompteOpération]
    FOREIGN KEY ([Compte_Id])
    REFERENCES [dbo].[CompteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompteOpération'
CREATE INDEX [IX_FK_CompteOpération]
ON [dbo].[OpérationSet]
    ([Compte_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------