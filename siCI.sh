echo "Enter the principal value -> " 
read P
echo "Enter the rate of intrest -> " 
read R
echo "Enter the number of years -> " 
read t
echo "Enter the number of times applied per year ->"
read n

echo "The principal ,rate of interest and number of years are $P $R $t"
s=`echo $P \* $R \* $t \* 0.01 | bc -l`
echo "The simple Interest is $s"
amt=`echo "scale=2;$P * ( 1 + $R * $t )"  | bc -l`
echo "The amount is $amt"
power=`expr $n \* $t`
echo $power
ci=`echo "scale=2;$P * ( 1 + $R / $n ) ^ $power" | bc -l`
echo "The compound intrest is $ci"

