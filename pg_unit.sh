#!/bin/bash

MATRIX="01234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$^*()[]"
S_STRING="!@#$^*()[]"

APPEND="$APPEND${S_STRING:$(($RANDOM%${#S_STRING})):1}"
LENGTH="8"

while [ "${n:=1}" -le "$LENGTH" ]
do
PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
let n+=1
done

PASSWORD=$PASS$APPEND
echo $PASSWORD