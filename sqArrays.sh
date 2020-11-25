echo -n "Enter the number of squares:"
read n 
echo "Enter sides of each square :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
for ((i=0; i<n; i++))
do
    temp=${a[$i]}
    peri[$i]=$((4*temp))
    area[$i]=$((temp*temp))
done
echo "The sides array is ${a[@]}"
echo "The perimeter array is ${peri[@]} units"
echo "The area array is ${area[@]} sq.units"