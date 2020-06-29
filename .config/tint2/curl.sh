curl ifconfig.me > /dev/null 2>&1

if [ "$?" != 0 ]; then
	echo " no internet"
else
	echo " $(curl ifconfig.me)"
fi

