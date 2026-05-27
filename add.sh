#!/bin/sh
sum=0
for val
do
sum=`expr $sum + $val`
done
echo $sum
