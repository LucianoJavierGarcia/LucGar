#!/usr/bin/bash

stylesheet="w3.css"

stylesheet="https://www.w3schools.com/w3css/4/w3.css"

LucGar="LucGar"

if [! $STYLESHEET ]; then
echo "Descargando $STYLESHEET..."
curl -0 $STYLESHEET_URL || { echo "Error al descargar el STYLESHEET"; exit 1; }
else
echo "STYLESHEET ya descargado"
fi
mkdir -p LucGar

cp index.html page1.html page2.html LucGar/

echo "Se a terminado, todo esta bien y sin errores"

