#!/bin/bash

arg = "$1"

case $1 in
    "--date | -d") echo $(date) ;;
    "--logs | -l")
        arg2 = "${2:=100}"
        for i in {1..$arg2}
        do
            touch "log${i}.txt"
        done ;;
    "--help | -h")
        echo "--help lub -h | wyswietla ta wiadomosc"
        echo "--date lub -d | wyswietla dzisiejsza date"
        echo "--logs [ilosc] lub -l [ilosc] | generuje pliki txt (domyslnie 100)"
        ;;
    "--init")
        git clone https://github.com/zium1337/nwbi.git
        PATH=$PATH:$(pwd)
        export PATH
        ;;
    "--error")
        arg2 = "${2:=100}"
        for i in {1..$arg2}
        do
            mkdir error$i
            touch error$i/error$i.txt
        done
        ;;
    *)
        echo "--help lub -h | wyswietla ta wiadomosc"
        echo "--date lub -d | wyswietla dzisiejsza date"
        echo "--logs [ilosc] lub -l [ilosc] | generuje pliki txt (domyslnie 100)"
esac