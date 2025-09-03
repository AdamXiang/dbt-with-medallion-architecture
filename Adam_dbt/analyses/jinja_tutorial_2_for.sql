{%- set apples = ['富士 (Fuji)', '嘎拉 (Gala)', '青蘋果/翠玉 (Granny Smith)', '五爪 (Red Delicious)', '金冠 (Golden Delicious)', '粉紅佳人 (Pink Lady)', '新世界 (Sekai Ichi)', '黑鑽石蘋果 (Black Diamond Apple)'] -%}

-- for loop

{% for apple in apples %}

  {% if apple != '青蘋果/翠玉 (Granny Smith)' %}

    {{ apple }}
  {% else %}
    I Love {{ apple }}

  {% endif %}
{% endfor %}