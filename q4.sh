# Initialize the array named as a,
# then copy odd index values to b
# and even index values to c
# then display all arrays
a=(10 20 30 40 50 60 70 80 90 100)
b=(${a[1]} ${a[3]} ${a[5]} ${a[7]} ${a[9]})
c=(${a[2]} ${a[4]} ${a[6]} ${a[8]})
echo ${a[*]}
echo ${b[@]}
echo ${c[*]}
