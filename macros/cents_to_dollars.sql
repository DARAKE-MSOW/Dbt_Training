{% macro cents_to_dollars(amount_column, decimal=2) -%}
    Round({{amount_column}}/100,{{decimal}})
{%- endmacro -%}