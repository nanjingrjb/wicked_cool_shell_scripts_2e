#########################################################################
# File Name: testfun.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun May 28 11:36:06 2023
#########################################################################
#!/bin/bash
checkvalid()
{
	a=$1
	b=$2

	newa=$(echo "$a"|sed 's/[[:digit:]]//g')
	echo $newa
if [ -z $newa ];then
	echo "pure int ."
	res1=0
else
	res1=1
fi
	newb=$(echo "$b"|sed 's/[[:digit:]]//g')
	echo $newb
if [ -z $newb ];then
	echo "pure int ."
	res2=0
else
	res2=1
fi


if [ $res1 = 0 -a  $res2 = 0 ] ;
then echo "both int."
	return 0
else
	echo "not all int."
	return 1
fi
}

add()
{
	a=$1
	b=$2
	if ! checkvalid $a $b;then
		echo 'input both ints.'
	else
	    c=$((a+b))
	    echo $c
	fi

}

d=$(add  $1 $2)
echo $d	
