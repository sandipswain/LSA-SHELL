echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
echo "The 4 digits number in the array are"
for ((i=0; i<n; i++))
do 
    temp=${a[$i]}
    c=0
    d=0
    while [ $temp -gt 0 ]
    do
	    d=$(( temp % 10))
        temp=$(( temp / 10))
        c=`expr $c + 1`
    done
    if test $c -eq 4 
    then
        echo ${a[$i]}
    fi
done