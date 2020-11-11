# Print the pattern
# 1 1 1 1
# 2 2 2 2
# 3 3 3 3
# 4 4 4 4
echo "Enter the number of rows and columns"
read n
i=1
for (( i=1; i<=n; i++ ))
do
    for (( j=1; j<=n; j++ ))
    do
        echo -n "$i"
    done
    echo
done