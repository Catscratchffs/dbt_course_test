SELECT *,
DATEADD(DAY,-89, GETDATE()) AS LAST_UPDATED
FROM {{ source('globalmart', 'orders') }}