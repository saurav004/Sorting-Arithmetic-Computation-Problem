#! /bin/bash -x

echo "---------------------------------------------------------------Welcome to SORTING AND ARITHMETIC COMPUTATION----------------------------------------------------------------------"
#reading 3 inputs from Command Line
read -p "Enter a number" a
read -p "Enter a number" b
read -p "Enter a number" c
echo "1st Number=$a, 2nd Number=$b, 3rd Number=$c"

#Calculating  Expressions 1.$a+$b*$c 2.$a*$b+$c 3.$c+$a/$b 4.$a%$b+$c)

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))
echo $result1 $result2 $result3 $result4
