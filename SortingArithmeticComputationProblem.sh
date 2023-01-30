
echo "Welcome to Sorting Arithmetic Computation Problem"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo "The three numbers are: $a, $b and $c"

firstCompute=$(( $a + $b * $c ))
echo "$a + $b * $c = $firstCompute"

secondCompute=$(( $a * $b + $c ))
echo "$a * $b + $c = $secondCompute"

thirdCompute=$(( $c + $a / $b ))
echo "$c + $a / $b = $thirdCompute"

fourthCompute=$(( $a % $b + $c ))
echo "$a % $b + $c = $fourthCompute"

declare -A dictionary
declare -a array

count=0

dictionary[firstCompute]=$firstCompute
dictionary[secondCompute]=$secondCompute
dictionary[thirdCompute]=$thirdCompute
dictionary[fourthCompute]=$fourthCompute

for computation in ${!dictionary[@]}
do
	array[count++]=${dictionary[$computation]}
done

echo "The computation array is: ${array[@]}"

size=${#array[@]}

for(( i = 0; i < size - 1; i++ ))
do
	flag=0
	for(( j = 0; j < size - i - 1; j++))
	do
		if ((array[j] < array[j+1]))
		then
                	temp=${array[j]}
                	array[j]=${array[j+1]}
                	array[j+1]=$temp
                	flag=1
                fi
	done
        if((flag==0))
        then
		break
    	fi
done

echo "The Computation array in descending order is: ${array[@]}"
