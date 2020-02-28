CREATE TABLE [Warehouse].[VehicleTemperatures] (
    [VehicleTemperatureID] BIGINT          IDENTITY (1, 1) NOT NULL,
    [VehicleRegistration]  NVARCHAR (20)   COLLATE Latin1_General_CI_AS NOT NULL,
    [ChillerSensorNumber]  INT             NOT NULL,
    [RecordedWhen]         DATETIME2 (7)   NOT NULL,
    [Temperature]          DECIMAL (10, 2) NOT NULL,
    [FullSensorData]       NVARCHAR (1000) COLLATE Latin1_General_CI_AS NULL,
    [IsCompressed]         BIT             NOT NULL,
    [CompressedSensorData] VARBINARY (MAX) NULL,
    CONSTRAINT [PK_Warehouse_VehicleTemperatures] PRIMARY KEY NONCLUSTERED ([VehicleTemperatureID] ASC)
)
WITH (MEMORY_OPTIMIZED = ON);

