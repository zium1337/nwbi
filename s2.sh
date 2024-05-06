if ["$1" == "--logs"]; then
    for i in {1..100}
    do
        touch "log${i}.txt"
    done
else
    echo "."
fi