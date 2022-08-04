{% snapshot orders_snapshot %}

{{
    config(
        target_database='analytics',
        target_schema='dbt_mhathorn',
        unique_key='orderid',

        strategy='timestamp',
        updated_at='LAST_UPDATED',
    )
}}

SELECT *
FROM {{ ref('raw_orders') }}

{% endsnapshot %}