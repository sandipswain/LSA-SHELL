a=(10 20 30)
echo "Original Array ->"
echo ${a[@]}
echo "Copied Array ->"
copy=(${a[0]} ${a[1]} ${a[2]})
echo ${copy[@]}

