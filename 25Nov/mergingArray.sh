echo "Enter the elements for array_1"
read -a array_1
echo "Enter the elements for array_2"
read -a array_2
echo "Enter the elements for array_3"
read -a array_3
merged_array=()
j=0
for i in ${array_1[@]}
do
    merged_array[$j]=$i
    j=`expr $j + 1`
done
for i in ${array_2[@]}
do
    merged_array[$j]=$i
    j=`expr $j + 1`
done
for i in ${array_3[@]}
do
    merged_array[$j]=$i
    j=`expr $j + 1`
done
echo "The final merged array is ${merged_array[@]}"