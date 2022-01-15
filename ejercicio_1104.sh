# Se necesitara obtener el nombre de la columna.
# En este caso para el archivo de datos Buzzard columna 10
cut -d ',' -f 8 data/Buzzard2015_data.csv | head -n 1

# Ahora se necesita obtener el número de valores distintos.
cut -d ',' -f 8 data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

# Obtención del mínimo.
cut -d ',' -f 8 data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

# Obtención del máximo.
cut -d ',' -f 8 data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
