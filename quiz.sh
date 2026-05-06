#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

while true; do
    echo "--------------------------"
    echo "     QUIZ MATEMATICO      "
    echo "--------------------------"
    echo "1) Problemas de suma"
    echo "2) Problemas de resta"
    echo "3) Problemas de multiplicación"
    echo "4) Problemas de división"
    echo "9) Salir"
    echo "--------------------------"
    read -p "Elige una opción: " opcion
    echo ""

    case $opcion in
        1)
            if [ -x "$DIR/suma.sh" ]; then
                "$DIR/suma.sh"
            else
                bash "$DIR/suma.sh"
            fi
            echo ""
            ;;
        2)
            echo "Módulo de resta"
            echo ""
            ;;
        3)
            echo "Módulo de multiplicación"
            echo ""
            ;;
        4)
            echo "Módulo de división"
            echo ""
            ;;
        9)
            echo "Salida del Sistema"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, elige una opción válida del menú."
            echo ""
            ;;
    esac
done
