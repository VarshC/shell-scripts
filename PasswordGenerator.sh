#!/bin/bash

#Simple Password Generator

echo "This is a simple password generator!"
echo "Please enter the length of the password: "
read PASS_LENGTH

for p in $(seq 1);
do
	openssl rand -hex 48 | cut -c1-$PASS_LENGTH
done 


#generates random base 64 characters
#has 48 characters
#cut from first column (or letter) until the reqd length
