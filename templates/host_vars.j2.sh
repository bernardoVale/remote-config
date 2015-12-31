#!/bin/bash
echo "---
remote_files:
 {% for r in f_result.results %}
  {% if r.stdout != "" %}
  - {file_name: {{r.item}}, service_handler: {% if r.item == "nrpe.cfg" %}nrpe, {% else %}null, {% endif %}remote_path: {{r.stdout}}}
{% endif %}
 {% endfor%}" > /etc/ansible/host_vars/{{inventory_hostname}}