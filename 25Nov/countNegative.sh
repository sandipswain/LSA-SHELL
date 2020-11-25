echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
cn=0
for ((i=0; i<n; i++))
do 
    temp=${a[$i]}
    if ((temp < 0))
    then
        ((cn++))
    fi
done
echo "The total number of negative numbers in the array is $cn"