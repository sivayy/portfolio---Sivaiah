#!/bin/bash

echo "Please enter a word: "

read word

revword=`echo "$word" | rev `

if [ $revword == $word ]; then
	echo " The given word $word is a Palindrome"
else
	echo "The given word $word is not a Palindrome"
fi
