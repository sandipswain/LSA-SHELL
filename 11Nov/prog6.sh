# q6.Write a shell script to sort names from an array of strings
# arr=("Pheobe" "Rachael" "Joey" "Chandler" "Monica" "Ross" )



echo "Enter the number of strings you want ot enter "
read n

echo "Enter the elements"
i=0
while [ $i -lt $n ]
do
    read a[$i]
    i=`expr $i + 1`
done
echo "Before sorting "
echo ${a[@]}
# sortString ${a[@]}
# sort $a

echo "After Sorting"
for el in "${a[@]}"
# for el in $a
do
    echo "$el"
done | sort
# echo "I'll be there for you!!"
