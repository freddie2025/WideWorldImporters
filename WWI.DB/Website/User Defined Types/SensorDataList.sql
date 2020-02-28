CREATE TYPE [Website].[SensorDataList] AS TABLE (
    [SensorDataListID]     INT             IDENTITY (1, 1) NOT NULL,
    [ColdRoomSensorNumber] INT             NULL,
    [RecordedWhen]         DATETIME2 (7)   NULL,
    [Temperature]          DECIMAL (18, 2) NULL,
    PRIMARY KEY NONCLUSTERED ([SensorDataListID] ASC))
    WITH (MEMORY_OPTIMIZED = ON);

