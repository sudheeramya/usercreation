#!bin/bash
if [ "$#" = 0 ]; then
echo "usuage: /user-add.sh"

else if [ -f "$1" ]; then
 for i in `cat $1`; do useradd -s /bin/bash $i; done
 for y in `cat $1`; do echo -e "password\npassword" | passwd $y; done
 for z in `cat $1`; do cat /etc/passwd | grep $z; done
else echo "$1 not found"
fi
fi


