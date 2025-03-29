{{

    config(
        materialized="incremental",
        unique_key="orderid",
        transient=false,
        incremental_strategy="delete+insert",

    )
}}

select * from {{ ref('orders') }} 