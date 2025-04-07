{{

    config(
        materialized="incremental",
        unique_key="orderid",
        transient=false,
        incremental_strategy="delete+insert",
        on_schema_change = "sync_all_columns"

    )
}}

select * from {{ ref('orders') }} 