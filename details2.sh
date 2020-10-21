func()
{
    echo "regd=$r"
    echo "name=$n"
    echo physics=$a
    echo chemistry=$b
    echo mathematic=$c
    echo computer=$d
    echo "total=$((a+b+c+d))"
    x=`expr $a + $b + $c + $d`
    y=`expr $x / 4`
    echo "percentage=$y"
    if [ $y -gt 90 ]
    then
        echo "grade=o"
    elif [ $y -gt 80 ]
    then
        echo "grade=a"
    elif [ $y -gt 70 ]
    then
        echo "grade=b"
    elif [ $y -gt 60 ]
    then
        echo "grade=c"
    elif [ $y -gt 50 ]
    then
        echo "grade=d"
    else
        echo "grade=fail"
    fi
}
while true
do
    echo "enter user"
    read u
    echo "enter group"
    read g
    if grep -w $u /etc/passwd >/dev/null
    then
        if grep -w $g /etc/group >/dev/null
        then
            echo "correct user and group welcome to iter"
            echo "regdno name marks in 4 subjects"
            read r n a b c d
            func $r $n $a $b $c $d 
        else
            echo "wrong group"
        fi
    else
        echo "wrong user"
        break
    fi
    echo "continue"
    read c
    case $c in
        no|No|NO)exit 0;;
    esac
done