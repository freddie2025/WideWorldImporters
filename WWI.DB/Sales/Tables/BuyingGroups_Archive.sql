CREATE TABLE [Sales].[BuyingGroups_Archive] (
    [BuyingGroupID]   INT           NOT NULL,
    [BuyingGroupName] NVARCHAR (50) NOT NULL,
    [LastEditedBy]    INT           NOT NULL,
    [ValidFrom]       DATETIME2 (7) NOT NULL,
    [ValidTo]         DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_BuyingGroups_Archive]
    ON [Sales].[BuyingGroups_Archive]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

