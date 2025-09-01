CREATE EXTERNAL TABLE dbo.fact_trips
WITH (
    LOCATION = 'star_schema/fact_trips',
    DATA_SOURCE = mystorage_dfs,
    FILE_FORMAT = SynapseDelimitedTextFormat
)
AS
SELECT
    trip_id,
    rideable_type,
    start_at,
    end_at,
    start_station_id,
    end_station_id,
    rider_id
FROM dbo.staging_trips;
