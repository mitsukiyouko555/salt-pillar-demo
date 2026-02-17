
{% set username = pillar['add_admin_user']['username'] %}

addAdminUser:
  user.present:
    - name: {{ username }}
    - password: {{ pillar['add_admin_user']['password'] }}
    - shell: /bin/bash
    - home: /home/{{ username }}
    - groups:
      {% if grains['os_family'] == 'Debian' %}
      - sudo
      {% else %}
      - wheel
      {% endif %}
    - hash_password: True
