totalMarks() {
    sum=$(($1 + $2 + $3))
    per=`echo "scale=2;$sum/3" | bc`
    echo "Student $i"
    echo "Name of the Student is $Name"
    echo "Registration Number is $regdNo"
    echo "Total Marks of the student is $sum"
    echo "Percent of students $per"
}
echo "Enter the number of students"
read n
i=0
while test $i -lt $n  
do
    echo "Enter the Name of the student"
    read Name;
    echo "Enter the Registration Number"
    read regdNo;
    echo "Enter the marks of the 3 subjects"
    read m1;
    read m2;
    read m3;
    totalMarks $m1 $m2 $m3 $Name $regdNo $i
    i=`expr $i + 1`
done
