echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
for ((i=0;i<n;i++))
do  
    for ((j=0;j<n;j++))
    do
        if test ${a[$i]} -lt ${a[$j]}
        then
            temp=${a[$i]}
            a[$i]=${a[$j]}
            a[$j]=$temp
        fi
    done
done
size=`expr $n - 2`
echo "the sorted array is ${a[@]}"
echo "The second largest element is:"
echo ${a[$size]}