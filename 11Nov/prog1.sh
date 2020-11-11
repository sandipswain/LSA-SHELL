# Print the pattern
# 1
# 1 2
# 1 2 3
# 1 2 3 4

echo "Enter the number of rows and columns"
read n
i=1
for (( i=1; i<=5; i++ ))
do
    for (( j=1; j<=i; j++ ))
    do
        echo -n "$j"
    done
    echo
done