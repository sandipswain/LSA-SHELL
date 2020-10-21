funcaddrec()
{
    echo $cid $cname $adr $mbo>>custfile
    cat custfile
}
while true
do
    echo "enter customer id"
    read cid
    echo "enter customer name"
    read cname
    echo "enter address"
    read adr
    echo "mobile no"
    read mbo
    funcaddrec $cid $cname $adr $mbo
    echo "continue"
    read c
    case $c in
    no|No|NO)exit 0;;
    esac
done