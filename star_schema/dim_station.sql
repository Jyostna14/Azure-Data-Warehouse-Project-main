
CREATE EXTERNAL TABLE dbo.dim_station

WITH (
    LOCATION = 'star_schema/dim_station',
    DATA_SOURCE = mystorage_dfs,
    FILE_FORMAT = SynapseDelimitedTextFormat
)
AS
SELECT DISTINCT
    station_id,
    name,
    latitude,
    longitude
FROM dbo.staging_station;
