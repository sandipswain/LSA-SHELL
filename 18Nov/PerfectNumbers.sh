for ((i=0,j=1; i<5; j++))
do
    x=$j
    s=0
    for ((k=1; k<x; k++))
    do
        if ((x%k==0))
        then
            s=`expr $s + $k`
        fi
    done
    if test $s -eq $x
    then
        perfect[$i]=$x
        i=`expr $i + 1`
	    echo "A Perfect Number is $x"
    fi
done
echo ${perfect[@]}