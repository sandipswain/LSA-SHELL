# q17)write a shell script to use functions,case..esac,for  do ..done loop for the following file operations.
# i)add record to employee file for empid,name,salary
# ii)display record
# iii)exit

echo "Choices"
echo "1. add record to employee file for empid,name,salary"
echo "2. Display record"
echo "3. Exit"

addRecord(){
    echo "Enter your empid" 
    read empid
    echo $empid>>employee.txt
    echo "Enter your Name"
    read name
    echo $name>>employee.txt
    echo "Enter your salary"
    read salary
    echo $salary>>employee.txt
}

dispRecord(){
    cat employee.txt
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
