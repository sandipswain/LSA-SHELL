# Print 10 multiples of first 24 numbers 

echo -n "Enter the number of elements :"
read n
echo -n "Enter numbers ->"

zeroCount(){
    a=$1
    d=0
    while [ $a -gt 0 ]
    do
        d=$(( $a % 10 ))
        a=$(( $a / 10 ))
        if [ $d -eq 0 ]
        then
            count=`expr $count + 1`
        fi
    done

}
i=0
while [ $i -lt $n ]
do
    read a[$i]
    i=`expr $i + 1`
done
echo ${a[@]}

count=0
i=0
while [ $i -lt $n ]
do
    
    if [ ${a[$i]} -eq 0 ]
    then
        # count=$((count+1))
        count=`expr $count + 1`
    else 
       zeroCount ${a[$i]} 
    fi
    i=`expr $i + 1`
done
echo "The number of zeros in the array $count"