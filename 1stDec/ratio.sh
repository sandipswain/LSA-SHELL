# q15)write a shell script to find the ratio(assume numerator as each element of array1 and denominator as each element of  array2) values then store ratio in another array and display.

echo "Enter the elements of the 1st array"
read -a arr1 
echo "Enter the elements of the 1st array"
read -a arr2 

arr3=()
# echo ${arr1[@]}
# echo ${arr2[@]}
len=${#arr1[@]}
if [ ${#arr1[@]} -ne ${#arr2[@]} ]
then 
    echo "Ratio can't be computed"
else 
    for (( i = 0; i < len; i++ ))
    do 
        arr3+=`echo "scale=2; ${arr1[i]} / ${arr2[i]}" | bc -l`
    done
    echo "Resultant ratio array: ${arr3[@]}"
fi