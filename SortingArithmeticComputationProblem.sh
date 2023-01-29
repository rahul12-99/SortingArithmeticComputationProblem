
echo "Welcome to Sorting Arithmetic Computation Problem"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo "The three numbers are: $a, $b and $c"

firstCompute=$(( $a + $b * $c ))
echo "$a + $b * $c = $firstCompute"

secondCompute=$(( $a * $b + $c ))
echo "$a * $b + $c = $secondCompute"

thirdCompute=`awk 'BEGIN{printf("%0.2f",'$c+$a/$b')}'`;
echo "$c + $a / $b = $thirdCompute"

fourthCompute=$(( $a % $b + $c ))
echo "$a % $b + $c = $fourthCompute"

declare -A dictionary


dictionary[firstCompute]=$firstCompute
dictionary[secondCompute]=$secondCompute
dictionary[thirdCompute]=$thirdCompute
dictionary[fourthCompute]=$fourthCompute

for computation in ${!dictionary[@]}
do
	echo "dictionary[$computation] = ${dictionary[$computation]}"
done
