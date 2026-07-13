{% macro trimmer(column_name, node=none) %} trim(upper({{ column_name }})) {% endmacro %}
