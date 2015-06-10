#!/bin/sh

menuChoice=""
books="books.cdb"
booktitle="title.cdb"
temp=/tmp/cdb.$$
trap 'rm -f $temp' EXIT

getReturn(){
	echo -e "Press Return/Enter \c"
	read x
	return 0
}

getConfirm(){	
	echo -n "Sure? "
	while true
	do
		read x
		case "$x" in
			( y | yes | Y | Yes | YES ) return 0;;
			( n | no | N | No | NO ) echo "cancelled"
						return 1;;
			* ) echo "please enter yes or no";;
		esac
	done 
}
