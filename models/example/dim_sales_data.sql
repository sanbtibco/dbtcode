{{ config(materialized="table") }}
with
    sales as (
        select
            sale_id,
            sale_amnt,

            gst,
            ({{ sale_tax("sale_amnt", "GST") }}) as total_sales_value
        from {{ ref("stg_sales") }}
    )
select *
from sales
