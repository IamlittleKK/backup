CREATE TABLE [dbo].[articles]
(
	[id] INT NOT NULL PRIMARY KEY, 
    [class] INT NOT NULL, 
    [title] VARCHAR(50) NOT NULL, 
    [pushTime] DATETIME NOT NULL, 
    [keyWords] VARCHAR(50) NOT NULL, 
    [content] NTEXT NOT NULL, 
    [clockCount] INT NOT NULL
)
