FAILURES=0
for i in {1..7}
do
    ls $i  > /dev/null 2>&1
    if [ "$?" == "1" ]; then
        FAILURES=$[$FAILURES +1]
        echo  "Test $i failed ($FAILURES failures in total)"
    fi
done
