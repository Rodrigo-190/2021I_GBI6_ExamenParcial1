echo "Niveles hormonales en babuinos"

echo "Gesquière et al. (2011) estudiaron los niveles hormonales en la sangre de los babuinos. Cada
individuo fue muestreado varias veces."
echo "Se pide:"

echo " 1. ¿Cuántas veces se registraron los niveles de los individuos 3 y 27?"

echo "Primero tengo que ver como está estructurada la data"

head -n 2 ../../../CSB-master/unix/data/Gesquiere2011_data.csv 
echo "Para el individuo 3"

cut -f 1 ../../../CSB-master/unix/data/Gesquiere2011_data.csv | grep -c -w 3

echo "Para el individuo 27"
cut -f 1 ../../../CSB-master/unix/data/Gesquiere2011_data.csv | grep -c -w 27

echo "2. Escribir un script tomando como entrada el nombre del archivo y el ID de la
persona, y devolviendo el número de registros para ese ID"

cut -f 1 $1 ../../../CSB-master/unix/data/Gesquiere2011_data.csv 2 | grep -c -w $2
echo "Extrae el numero de columnas, especificado por el delimitador, $1 hace referencia a la primera variable de la data,
 y por consiguiente $2 a la segunda variable"