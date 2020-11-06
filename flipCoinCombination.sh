#! /bin/bash

flipCoin()
{
	val=$((RANDOM % 2))

	if (( $val == 0 ))
	then
		echo "Head"
	else
		echo "Tail"
	fi
}

flipCoin
