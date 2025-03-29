{{

    config(
        materialized="incremental",
        unique_key="empno",
        transient=false,
        incremental_strategy="delete+insert",

    )
}}

select * from {{ source('dbt_example','emp_modelex')  }} 