CREATE TABLE [dbo].[review]
(
	[rid] INT NOT NULL PRIMARY KEY, 
    [aid] INT NOT NULL, 
    [remen] VARCHAR(50) NOT NULL, 
    [reip] CHAR(16) NOT NULL, 
    [retitle] VARCHAR(50) NOT NULL, 
    [recontent] TEXT NOT NULL, 
    [reviceRecord] TEXT NOT NULL
)
