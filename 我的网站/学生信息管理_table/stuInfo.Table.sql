CREATE TABLE [dbo].[stdInfo]
(
	[stdXh] CHAR(20) NOT NULL , 
    [stdMm] VARCHAR(100) NOT NULL, 
    [stdSfzhm] NVARCHAR(22) NOT NULL, 
    [stdXm] VARCHAR(20) NOT NULL, 
    [stdRxsj] DATETIME NOT NULL, 
    [stdSzbj] VARCHAR(30) NOT NULL, 
    [stdSfby] BIT NOT NULL, 
    [stdJtdz] VARCHAR(150) NOT NULL, 
    [stdLxdh] VARCHAR(40) NOT NULL, 
    [stdBgqq] TEXT, 
    PRIMARY KEY ([stdXh])
)
