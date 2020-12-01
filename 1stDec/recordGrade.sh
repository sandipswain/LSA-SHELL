# q16)write a shell script to use functions,case..esac,for  do ..done loop for the following file operations.
# i)add record to student file for regd.no,name,mark
# ii)display record
# iii)exit
echo "Choices"
echo "1. Add record to student file for regd no.,name,mark"
echo "2. Display record"
echo "3. Exit"

 addRecord(){
    echo "Enter your name" 
    read name
    echo $name>>students.txt
    echo "Enter your registration number"
    read regdNo
    echo $name>>students.txt
    echo "Enter your marks in three subjects"
    read mark1
    read mark2
    read mark3
    echo $mark1>>students.txt
    echo $mark2>>students.txt
    echo $mark3>>students.txt
}

dispRecord(){
    cat students.txt
}


while [ true ]
do
echo "Enter your choice"
read ch
case $ch in
    1)
    addRecord
    ;;
    2)
    dispRecord
    ;;
    3) break
    ;;
esac
done
