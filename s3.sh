if ["$1" == "--logs"]; then
    ilosc = "$2"
    for i in {1..$ilosc}
    do
        touch "log${i}.txt"
    done
else
    echo "."
fi