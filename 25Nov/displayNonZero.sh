echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
echo "The non zero numbers are"
for ((i=0; i<n; i++))
do
    temp=${a[$i]}
    if test $temp -ne 0
    then
        echo "$temp"
    fi
done