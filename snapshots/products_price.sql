{% snapshot products_snapshot %}

{{

    config(
      target_schema='dbt_snapshots_example', 
      unique_key='products_id', 
      strategy='check',
      check_cols='all'
    )
}}

    select *
    from {{ ref("stg_raw__product") }}

{% endsnapshot %}
