factorial_check() {
    fact=1
    num=$i
    while [ $num -gt 0 ]
    do
        fact=$((fact*num))
        num=$((num-1))
    done
    echo "Factorial of $i is $fact"
}
echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
for i in ${a[*]}
do
    factorial_check $i
done