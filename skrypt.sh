#!/bin/bash
read x
if [ $x = "--date" ] || [ $x = "-d" ]; then
    date
elif [ $x = "--logs" ] || [ $x = "-l" ]; then
    for i in {1..100}; do
        touch log$i.txt
    done
elif [ $x = "--help" ] || [ $x = "-h" ]; then
    echo "Pomoc: "
    echo "  --date    wyświetla dzisiejszą date"
    echo "  --logs    tworzy 100 plików logx.txt"
    echo "  --help    wyświetla wszystkie dostępne komendy"
else
    echo "Nieznana komenda, użyj --help lub -h by zobaczyć listę dostępnych komend."
fi
read y
#SHELL
