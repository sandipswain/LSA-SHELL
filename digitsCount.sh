echo "Enter a number"
read n
a=$n
c=0
d=0
while [ $a -gt 0 ]
do
	d=$(( $a % 10))
    	a=$(( $a / 10))
    	c=`expr $c + 1`
done
echo "The digits are $c"
