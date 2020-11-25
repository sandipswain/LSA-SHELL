echo -n "Enter the number of temps you want :"
read n 
echo "Enter temps in degree celcius:"
i=0 
while [ $i -lt $n ] 
do 
	read tempC[$i]  
	i=`expr $i + 1` 
done
for ((i=0; i<n; i++))
do
    temp=${tempC[$i]}
    x=`echo $temp \* 1.8 | bc`
    tempF[$i]=`echo $x + 32.0 | bc`
done
echo "The temperatures in degree Celcius are ${tempC[@]}"
echo "The temperatures in degree Fahrenheit are ${tempF[@]}"