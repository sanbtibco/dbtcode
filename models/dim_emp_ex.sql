{{

    config(
        materialized="table",
        unique_key="empno",
        transient=false,
        incremental_strategy="delete+insert",

    )
}}

select * from {{ ref('stage_employee_snap') }} where dbt_valid_to is null