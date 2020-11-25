echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
echo "Enter the element you want to delete"
read x
newArr=()
j=0
for ((i=0;i<n;i++))
do
    if test $x -ne ${a[$i]}
    then
        ((j++))
        newArr[$j]=${a[$i]}
    fi
done
echo "The array after deleting the desired element is ${newArr[@]}"