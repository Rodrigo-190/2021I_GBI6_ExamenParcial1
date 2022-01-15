echo "Buzzard et al. (2016) recolectaron datos sobre el crecimiento de un bosque en Costa Rica. En el
archivoBuzzard2015_data.csv encontrará un subconjunto de sus datos, incluida la información
taxonómica, la abundancia y la biomasa de los árboles"
echo "1. . Escriba un script que, para un archivo CSV y un número de columna determinados, imprima:"

echo "a. el nombre de la columna correspondiente"
cut -d ',' -f 7 ../../../CSB-master/unix/data/Buzzard2015_data.csv | head -n 1

echo "b. el numero de valores distintos de la columna"

cut -d ',' -f 7 ../../../CSB-master/unix/data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l


echo "c. el valor minimo"

cut -d ',' -f 7 ../../../CSB-master/unix/data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1


echo "d. el vamor maximo "

cut -d ',' -f 7 ../../../CSB-master/unix/data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
