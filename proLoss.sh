
echo "Input the cost price of an item"
read cp
echo "Input the selling price of the item"
read sp

if [ $cp \= $sp ]
then
	echo "There is no profit or loss"

fi
if [ $cp \> $sp ]
then
	s=`echo $cp - $sp | bc -l`
	per=`echo 100 \* $s / $cp | bc -l`
	echo "Loss of Rs:$s"
	echo `echo $per | bc -l`
else
	s=`echo $sp - $cp | bc -l`
	per=`echo 100 \* $s / $cp | bc -l`
	echo "Profit of Rs:$s"
	echo `echo $per | bc -l`
fi

