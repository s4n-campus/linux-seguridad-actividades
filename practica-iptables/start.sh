#!/bin/bash
mkdir /puerto8000
mkdir /puerto8001
mkdir /puerto8002
echo "Puerto 8000" > /puerto8000/index.html
echo "Puerto 8001" > /puerto8001/index.html
echo "Puerto 8002" > /puerto8002/index.html
cd /puerto8000 && python3 -m http.server 8000 &> /dev/null &
cd /puerto8001 && python3 -m http.server 8001 &> /dev/null &
cd /puerto8002 && python3 -m http.server 8002 &> /dev/null &
while sleep 1; do echo "Probando salida a Internet"
if curl -s https://www.google.com > /dev/null; then
    echo "Conexión exitosa"
else
    echo "Conexión fallida"
fi;
done
