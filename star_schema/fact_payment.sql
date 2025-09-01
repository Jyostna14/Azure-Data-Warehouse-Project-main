CREATE EXTERNAL TABLE dbo.fact_payment
WITH (
    LOCATION = 'star_schema/fact_payment',
    DATA_SOURCE = mystorage_dfs,
    FILE_FORMAT = SynapseDelimitedTextFormat
)
AS
SELECT
    paymentid,
    date,
    amount,
    rider_id
FROM dbo.staging_payment;
