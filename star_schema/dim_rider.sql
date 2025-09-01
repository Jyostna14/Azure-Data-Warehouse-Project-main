CREATE EXTERNAL TABLE dbo.dim_rider
WITH (
    LOCATION = 'star_schema/dim_rider',
    DATA_SOURCE = mystorage_dfs,
    FILE_FORMAT = SynapseDelimitedTextFormat
)
AS
SELECT DISTINCT
    C1,
    C2,
    C3,
    C4,
    C5,
    C6,
    C7,
    C8
FROM dbo.staging_rider;
