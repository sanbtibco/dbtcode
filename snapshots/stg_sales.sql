{% snapshot stg_sales %}
    {{
        config(
            target_schema="dbt_example_schema",
            target_database="dbtex",
            unique_key="sale_id",
            strategy="check",
            check_cols="all",
        )
    }}

    select *
    from {{ source("dbt_example", "sales") }}
{% endsnapshot %}
