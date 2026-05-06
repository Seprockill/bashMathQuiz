#!/bin/bash


A=$(( (RANDOM % 100) + 1 ))

B=$(( (RANDOM % 10) + 1 ))

respuesta_correcta=$((A * B))

intentos=3

while [ $intentos -gt 0 ]; do
    echo "¿Cuánto es $A * $B?"
    read -p "Tu respuesta: " respuesta
    
    if [[ "$respuesta" =~ ^[0-9]+$ ]] && [ "$respuesta" -eq "$respuesta_correcta" ]; then
        echo "Respuesta correcta."
        exit 0
    else
        intentos=$((intentos - 1))
        if [ $intentos -gt 0 ]; then
            echo "Respuesta incorrecta. Te quedan $intentos intentos"
            echo ""
        else
            echo "Respuesta incorrecta. Has agotado tus intentos."
            echo "La respuesta correcta era $respuesta_correcta."
            exit 0
        fi
    fi
done
