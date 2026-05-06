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
            if [ -x "$DIR/resta.sh" ]; then
                "$DIR/resta.sh"
            else
                bash "$DIR/resta.sh"
            fi
            echo ""
            ;;
        3)
            if [ -x "$DIR/multiplicacion.sh" ]; then
                "$DIR/multiplicacion.sh"
            else
                bash "$DIR/multiplicacion.sh"
            fi
            echo ""
            ;;
        4)
            if [ -x "$DIR/division.sh" ]; then
                "$DIR/division.sh"
            else
                bash "$DIR/division.sh"
            fi
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
