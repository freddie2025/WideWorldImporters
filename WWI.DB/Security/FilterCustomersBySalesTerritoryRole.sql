CREATE SECURITY POLICY [Application].[FilterCustomersBySalesTerritoryRole]
    ADD FILTER PREDICATE [Application].[DetermineCustomerAccess]([DeliveryCityID]) ON [Sales].[Customers],
    ADD BLOCK PREDICATE [Application].[DetermineCustomerAccess]([DeliveryCityID]) ON [Sales].[Customers] AFTER UPDATE
    WITH (STATE = ON);

