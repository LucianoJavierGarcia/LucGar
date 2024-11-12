#!/bin/bash

# Descargar w3.css si no existe
if [ ! -f "w3.css" ]; then
  echo "Descargando w3.css..."
  wget https://www.w3schools.com/w3css/4/w3.css
  if [ $? -ne 0 ]; then
    echo "Error al descargar w3.css. Deteniendo el script."
    exit 1
  fi
else
  echo "w3.css ya fue descargado. Omitiendo descarga."
fi

# Construir las páginas HTML
echo "Construyendo las páginas HTML..."
echo "<html><head><link rel='stylesheet' href='w3.css'></head><body><h1>Página 1</h1></body></html>" > index.html
echo "<html><head><link rel='stylesheet' href='w3.css'></head><body><h1>Página 2</h1></body></html>" > page2.html
echo "<html><head><link rel='stylesheet' href='w3.css'></head><body><h1>Página 3</h1></body></html>" > page3.html
echo "<html><head><link rel='stylesheet' href='w3.css'></head><body><h1>Página 4</h1></body></html>" > page4.html
