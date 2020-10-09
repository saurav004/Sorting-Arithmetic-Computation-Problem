#! /bin/bash -x

echo "---------------------------------------------------------------Welcome to SORTING AND ARITHMETIC COMPUTATION----------------------------------------------------------------------"
#reading 3 inputs from Command Line
read -p "Enter a number" a
read -p "Enter a number" b
read -p "Enter a number" c
declare -A DICT
declare -a Array
echo "1st Number=$a, 2nd Number=$b, 3rd Number=$c"

#Calculating  Expressions 1.$a+$b*$c 2.$a*$b+$c 3.$c+$a/$b 4.$a%$b+$c)

#ADDING RESULTS IN A DICTIONARY

DICT[1]=$(($a+$b*$c))
DICT[2]=$(($a*$b+$c))
DICT[3]=$(($c+$a/$b))
DICT[4]=$(($a%$b+$c))
echo "DICTIONARY:" ${DICT[@]}

#TO COPY DATA FROM DICTIONARY TO ARRAY
for((i=1;i<=${#DICT[@]}; i++))
do
	Array[$i]=$((DICT[$i]))
done
echo "ARRAY:"${Array[@]}

#TO SORT IN DESCENDING ORDER
function sorting()
{
        for ((i=1; i<=${#Array[@]}; i++))
                do
                        for ((j=$i; j<=${#Array[@]}; j++))
                        do
                                if [ ${Array[i]} -lt ${Array[j]} ]
                                then
                                temp=${Array[i]}
                                Array[$i]=${Array[j]}
                                Array[$j]=$temp
                                fi
                        done
                done
        echo "Sorted Array"${Array[@]}
}
#FUNCTION CALL
sorting
