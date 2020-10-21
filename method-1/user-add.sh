
#!/bin/sh
for user in `more user-list1.txt`
do
echo "$user"
useradd $user
echo "123" | passwd --stdin "$user"
chage -d O $user
done

