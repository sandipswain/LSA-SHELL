# q2)write a shell script to find second largest value among array of n elements
secondLarge(){
    i=0
    j=0
    temp=0
    for ((i=0;i<n;i++))
    do 
        for ((j=$i;j<n;j++))
        do
            if [ ${a[$i]} -lt ${a[$j]} ]
            then
                temp=${a[$i]}
                a[$i]=${a[$j]}
                a[$j]=$temp
            fi
        done
    done
    echo "Sorted Array: ${a[@]}"
    echo "The second largest element: ${a[1]}"
}

echo -n "Enter the number of elements :"
read n
echo -n "Enter numbers ->"
i=0
while [ $i -lt $n ]
do
    read a[$i]
    i=`expr $i + 1`
done
echo ${a[@]}
secondLarge ${a[@]}

