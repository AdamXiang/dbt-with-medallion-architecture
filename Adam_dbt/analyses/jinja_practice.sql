{% set inc_flag = 1 %}
{% set last_load = 3 %}

{% set columns_list = ["sales_id", "date_sk", "gross_amount"] %}


SELECT
  {% for col in columns_list %}
    {{ col }}
    {% if not loop.last %}
      , 
    {% endif %}
  {% endfor %}
FROM
  {{ ref('bronze_sales') }}

-- this is the initial load
{% if inc_flag == 1 %}

  WHERE date_sk > {{ last_load }}

{% endif %}