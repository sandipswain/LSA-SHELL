largest() 
{
    if [ $a -gt $b -a $a -gt $c ]
    then
        echo "$a is the largest number"
    elif [ $b -gt $c -a $b -gt $a ]
    then
        echo "$b is the largest number"
    else
        echo "$c is the largest number"
    fi
}
echo "Enter 3 numbers:"
read a;
read b;
read c;
largest $a $b $c
