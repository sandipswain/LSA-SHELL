sumavg() {
	sum=0
	for(( i=0; i<n; i++ )) {
		(( sum+=a[$i] ))
	}
	avg=`echo "scale=2; $sum / $n" | bc -l`
	echo "Sum is $sum"
	echo "Avg is $avg"
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
echo ${a[@]}
sumavg $a $n
