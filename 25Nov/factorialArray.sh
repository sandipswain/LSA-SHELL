echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
j=0
for el in ${a[@]}
do
    x=$el
    p=1
    for ((i=1; i<=x; i++))
    do
            p=`expr $p \* $i`
    done
    factArr[$j]=$p
    j=`expr $j + 1`
done
echo "The factorial array is ${factArr[@]}"