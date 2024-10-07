
if [ -z "$1" ]; then
  echo "Por favor, proporciona un nombre como parámetro."
  echo "Uso: $0 nombre_del_usuario"
  exit 1
fi

nombre=$1
mkdir -p "$nombre"

echo "$nombre" >> ganador.txt

echo "Carpeta '~$nombre' creada y nombre añadido al archivo ganadro.txt"


