substr()
{
	echo "substring value = ${str:$off:$len}"
}
read -p "enter the string : " str
read -p "enter the offset value from where extract the substring : " off
read -p "enter the length of string from offset value to extract : " len
substr $str $off $len
