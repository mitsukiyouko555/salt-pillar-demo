{% if grains['os'] == 'Ubuntu' %}

copyApples:
  file.managed:
    - name: /apples.txt
    - source: salt://directory/files/apples.txt
    - user: root
    - group: root
    - mode: '0644'

{% elif grains['os'] == 'Kali' %}

copyOranges:
  file.managed:
    - name: /oranges.txt
    - source: salt://directory/files/oranges.txt
    - user: root
    - group: root
    - mode: '0644'

{% endif %}
