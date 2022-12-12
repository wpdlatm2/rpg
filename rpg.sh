#!/bin/bash
N=1
while [ "$N" -le "$1" ]
do
	((N++))
	./pg_unit.sh
done
