SELECT *,
GETDATE() AS LAST_UPDATED
FROM {{ source('globalmart', 'orders') }}