#!/bin/bash
if [ -z "$1" ]; then
  echo "Por favor, proporciona un nombre como parámetro."
  exit 1
fi

nombre=$1

if [ ! -d "$nombre" ]; then
  mkdir "$nombre"
fi

minuto=$(date +"%M")

if (( minuto % 2 == 0 )); then
  resultado="Has ganado en el minuto $minuto"
else
  resultado="Has perdido en el minuto $minuto"
fi

archivo="$nombre/ganador.txt"

echo "$resultado" | tee -a "$archivo"

