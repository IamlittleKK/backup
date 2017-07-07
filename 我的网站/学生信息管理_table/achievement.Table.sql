CREATE TABLE [dbo].[achievement]
(
	[aeid] INT NOT NULL PRIMARY KEY, 
    [stdXh] NCHAR(20) NOT NULL, 
    [aeKcmc] VARCHAR(100) NOT NULL, 
    [aeKssj] DATETIME NOT NULL, 
    [aeKscs] INT NOT NULL, 
    [aeKscj] FLOAT NOT NULL
)
