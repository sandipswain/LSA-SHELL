echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
sum=0
c=0
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
for ((i=0;i<n;i++))
do
    if ((a[i]%2!=0))
    then
        sum=`expr ${a[$i]} + $sum`
        c=`expr $c + 1`
    fi
done
avg=`echo "scale=2; $sum / $c" | bc`
echo "Sum of $c odd numbers is $sum"
echo "Theie average is $avg"