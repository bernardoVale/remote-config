#!/bin/bash
echo "---
remote_files:
 {% for r in f_result.results %}
 {% if r.files != [] %}
 {%for f in r.files %}
  - {file_name: {{r.item}}, service_handler: {% if r.item == "nrpe.cfg" %}nrpe, {% else %}null, {% endif %}remote_path: {{f.path}}}
 {% endfor %}
{% endif %}
{% endfor%}" > /etc/ansible/host_vars/{{inventory_hostname}}