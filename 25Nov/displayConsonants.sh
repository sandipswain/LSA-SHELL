echo -n "Enter the total number of characters :"
read n 
echo "Enter characters one by one :"
i=0 
while [ $i -lt $n ] 
do 
	read a[$i]  
	i=`expr $i + 1` 
done
echo "The consonants are"
for char in ${a[@]}
do
    case $char in
    a|A);;
    e|E);;
    i|I);;
    o|O);;
    u|U);;
    *)
    echo $char;;
    esac
done