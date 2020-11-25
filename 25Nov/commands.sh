arr=( w last uptime history tty )
for var in ${arr[@]}
do
    eval $var
    sleep 1
done