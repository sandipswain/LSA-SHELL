armstrong() {
	temp=$n
	sum=0
	r=0
	d=0
	while test $temp -gt 0
	do
		r=`expr $temp % 10`
		d=`expr $r \* $r \* $r`
		#sum=`expr $sum + $d`
		sum=$((sum+d))
		temp=`expr $temp / 10`
	done
	if test $sum -eq $n
	then
		echo "The number is armstrong"
	else
		echo "The number is not armstrong"
	fi
}
echo "Enter the number"
read n
armstrong n