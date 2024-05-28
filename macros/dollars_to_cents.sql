{% macro dollars_to_cents(column_name) %}

round({{column_name}}*100)

{% endmacro %}