echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
flag=0
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
i=0 
while [ $i -lt $n ] 
do
    #prime a[$i]
    #Checking even or odd here
    temp=${a[$i]}
    r=$((temp % 2 ))
    if [ $r -eq 0 ]
    then
        ((ce++))
        #ce=`expr $ce + 1`
    else
        ((co++))
        #co=`expr $co + 1`
    fi
    
    for((j=2; j<=temp/2; j++))
	do
		if [ $((temp%j)) -eq 0 ]
  		then
   			flag=1
  		fi
	done
	
	if [ $flag -eq 1 ]
	then
		cn=`expr $cn + 1`
	else
		cp=`expr $cp + 1`
	fi

	i=`expr $i + 1`


done

echo "The number of evens are $ce"
echo "The number of odds are $co"
echo "The number of primes are $cp"
echo "The number of non primes are $cn"