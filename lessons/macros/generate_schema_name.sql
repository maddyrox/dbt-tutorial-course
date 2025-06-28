{% macro generate_schema_name(custom_schema_name, node) %}
  {% set target_schema = target.schema %}
  {% if custom_schema_name is none %}
    {{ target_schema }}
  {% else %}
    {{ target_schema }}__{{ custom_schema_name }}
  {% endif %}
{% endmacro %}
