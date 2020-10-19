echo "Enter the number of employees -->"

read n
i=0
while test $i -le $n 
do
    echo "Enter the basic salary ->"
    read basic

    echo "Enter the dearance allowance ->"
    read da

    echo "Enter the Ta ->"
    read ta

    echo "Enter the hra ->"
    read hra

    echo "Enter the deduction ->"
    read deduction

    gross=`expr $basic + $da + $ta + $hra`
    net=`expr $gross - $deduction`
    echo "The gross amount for Employee `expr $i + 1` is ->"
    echo $gross
    echo "The net amount for Employee `expr $i + 1` is ->"
    echo $net
    i=`expr $i + 1`

done



