fibonacci(){
    i=0
    a=0
    c=0
    b=1
    echo $a
    echo $b
    while [ $i -lt $((n-2)) ]
    do
       c=$((a+b))
       a=$b
       b=$c
       echo $c
       i=$((i+1)) 
    done
}
echo "Enter the number of elements"
read n
fibonacci $n