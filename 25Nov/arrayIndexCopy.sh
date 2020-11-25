echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
echo "Enter the indeces you want to copy"
read -a arr
i=0
for j in ${arr[@]} 
do 
    newArr[$i]=${a[$j]}
    i=`expr $i + 1`
done
echo "The new array forming with pervious array index ${newArr[@]}"