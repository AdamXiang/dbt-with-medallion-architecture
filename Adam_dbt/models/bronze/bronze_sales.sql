-- Block Configuration
{{
  config(
    materialized = 'view',
    )
}}

SELECT 
  * 
FROM
  {# dbt.source.fact_sale #}
  {{ source('source', 'fact_sales')}}