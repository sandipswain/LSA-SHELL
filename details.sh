fun() 
{
	sum=$(($1 + $2 + $3 + $4))
	echo "Total marks is $sum"
	percent=`echo "scale=2; $sum / 4" | bc`
	echo "Percentage is $percent"
}
echo "Enter your ref no"
read regno
echo "Enter your name"
read name
echo "Enter marks in 4 subjects"
read m0
read m1
read m2
read m3
fun m0 m1 m2 m3
