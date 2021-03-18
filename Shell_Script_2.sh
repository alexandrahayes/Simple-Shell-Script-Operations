#CS4350-Unix Systems Programming
#Integers entered
read -p "Enter the first number: " var1
read -p "Enter the second number: " var2
read -p "Enter the third number: " var3
echo "First number entered: $var1"
echo "Second number entered: $var2"
echo "Third number entered: $var3"
#sum of three ints entered
sum=$((var1+var2+var3))
echo "Sum: $var1 + $var2 + $var3 = $sum"
#product of three ints entered
product=$((var1*var2*var3))
echo "Product: $var1 * $var2 * $var3 = $product"
#average of three ints entered (whole number only)
average=$(( $sum/3 ))
echo "Average: ($var1 + $var2 + $var3)/3 = $average"
#square of each int
square1=$(($var1*$var1))
square2=$(($var2*$var2))
square3=$(($var3*$var3))
echo "Square: $var1 * $var1 = $square1"
echo "Square: $var2 * $var2 = $square2"
echo "Square: $var3 * $var3 = $square3"
#if each int is positive or negative or zero
if [ "$var1" -lt 0 ]
then
	echo "$var1 is negative"
elif [ "$var1" -gt 0 ]
then
	echo "$var1 is positive"
else
	echo "$var1 is zero"
fi
if [ "$var2" -lt 0 ]
then
	echo "$var2 is negative"
elif [ "$var2" -gt 0 ]
then
	echo "$var2 is positive"
else
	echo "$var2 is zero"
fi
if [ "$var3" -lt 0 ]
then
	echo "$var3 is negative"
elif [ "$var3" -gt 0 ]
then
	echo "$var3 is positive"
else
	echo "$var3 is zero"
fi
#whether each var falls into odd or evens
even=$(( $var1 % 2 ))
if [ "$even" -eq 0 ]
then
	echo "$var1 is even"
else
	echo "$var1 is odd"
fi
even=$(( $var2 % 2 ))
if [ "$even" -eq 0 ]
then
	echo "$var2 is even"
else
	echo "$var2 is odd"
fi
even=$(( $var3 % 2 ))
if [ "$even" -eq 0 ]
then
	echo "$var3 is even"
else
	echo "$var3 is odd"
fi
#all ints between 1 and second num
eval "int=({1..$var2})"
echo "Numbers between 1 and $var2 are: ${int[*]}"
#factoral int of first number
factorial=1
if [ "$var1" -gt 1 ];
then
	for((i=2;i<=$var1;i++)){
		factorial=$(($factorial*i))
	}
	echo "Factorial: $factorial"
elif [ "$var1" == 0 ];
then
	echo "Factorial is: 0"
else
	echo "Error: Number is negative."
fi
#if third int is prime
prime=$(( $var3 % 2 ))
if [[ "$prime" -eq 0 ]]
then
	echo "$var3 is not prime"
else
	echo "$var3 is prime"
fi
#smallest int
if [ $var1 -lt $var2 ] && [ $var1 -lt $var3 ]
then
	echo "The smallest integer is $var1"
elif [ $var2 -lt $var1 ] && [ $var2 -lt $var3 ]
then
	echo "The smallest integer is $var2"
else
	echo "The smallest integer is $var2"
fi
#largest int of
if [ $var1 -gt $var2 ] && [ $var1 -gt $var3 ]
then
	echo "The largest integer is $var1"
elif [ $var2 -gt $var1 ] && [ $var2 -gt $var3 ]
then
	echo "The largest integer is $var2"
else
	echo "The largest integer is $var3"
fi
echo "End of script"
echo "Alexandra Hayes"
exit 0
