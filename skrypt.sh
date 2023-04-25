#!/bin/bash
read x

if [ $x == "--date" ] || [ $x == "-d" ]; then
    date
	
elif [ $x == "--logs" ] || [ $x == "-l" ]; then
    for i in {1..100}; do
        touch log$i.txt
    done
	
elif [ $x == "--logs_"* ]; then
  n=$(echo $x | cut -c 8-)
  for i in $(seq 1 $n); do
    touch log$i.txt
  done
  
elif [ $x == "-l_"* ]; then
  n=$(echo $x | cut -c 4-)
  for i in $(seq 1 $n); do
    touch log$i.txt
  done

elif [ $x == "--error" ] || [ $x == "-e" ]; then
    for i in {1..100}; do
        touch error$i.txt
    done

elif [ $x == "--error_"* ]; then
  n=$(echo $x | cut -c 9-)
  for i in $(seq 1 $n); do
    touch error$i.txt
  done
  
elif [ $x == "-e_"* ]; then
  n=$(echo $x | cut -c 4-)
  for i in $(seq 1 $n); do
    touch error$i.txt
  done
     
elif [ $x == "--init" ] || [ $x == "-i" ]; then
  git clone https://github.com/user/repo.git
  export PATH=$PATH:$(pwd)/repo/bin
	 
elif [ $x == "--help" ] || [ $x == "-h" ]; then
    echo "Pomoc: "
    echo "  --date, -d      wyświetla dzisiejszą date"
    echo "  --logs, -l      tworzy 100 plików log.txt"
	echo "  --logs_x, -l_x  tworzy x liczbę plików log.txt"
    echo "  --help, -h      wyświetla wszystkie dostępne komendy"
	echo "  --error, -e     tworzy 100 plików error.txt"
	echo "  --error_x, -e_x tworzy x plików error.txt"
	echo "  --init, -i      klonuje całe repozytorium do i ustawia ścieżkę PATH"

else
    echo "Nieznana komenda, użyj --help lub -h by zobaczyć listę dostępnych komend."
fi

read y
#SHELL
