{% snapshot stage_employee_snap %}
{{

    config(
        unique_key='EMPNO',
        strategy='check',
        check_cols='all',
        target_schema='dbt_example_schema'
    )
}}

select 
*
from  {{ source('dbt_example','emp_ex') }}  --dbt_example name defined in source.yml and emp_ex is snowflake table
{% endsnapshot %}