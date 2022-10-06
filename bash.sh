#!/bin/sh

<<comment

echo "Hello world"



user input

echo "What is your name?"

#read PERSON

echo "Hello, $PERSON"



#variable_name = variable_value



Name="shakil"

echo $Name



name="mahmud"

readonly name

name="shohag"





Name="shakil"

unset Name

echo $Name





#special_variable

#when you run set the value of parameter after bash.sh

echo "File name: $0"

echo "First parameter: $1"

echo "Second parameter: $2"

echo "Quoted values: $@"

echo "Quoted values: $*"

echo "No of parameter: $#"





#./bash.sh write shakil wishes you happy learning

for TOKEN in $*

do

echo $TOKEN

done

comment



<<comment

#Basic operators

#Arithmetic operators

+ = expr $a +$b will give 30

- = expr $a - $b will give -10

* = expr $a \* $b will give 200

/ = expr $b / $a will give 2

% = expr $b % $a will give 0

= = a =$b would assign value of b into a

== = [$a == $b] would return false

!= = [$a !=$b] would return true



#Relational operators

-eq =[$a-eq $b] is not true

-ne =[$a-ne $b] is  true

-gt =[$a-gt $b] is not true

-lt =[$a-lt $b] is  true

-ge =[$a-ge $b] is not true

-le =[$a-le $b] is  true



#Boolean operators

! = logical negation [!false] is true

-o = logical or if one of the operands is true then the condition is true [$a -lt 20 -o$b-gt100] is true



-a = logical and if both of the operands is true then the condition is true otherwise false [$a -lt 20 -o$b-gt100] is false



#string operators

= = check operans are equal or not if yes then true.[$a = $b] is not true

!= check operans are equal or not if values are not equal then true.[$a != $b] is  true

-z = if the given string operand size is zero,if it is zero length then it returns true [-z $a] is not true

-n = if the given string operand size is non- zero,if it is non-zero length then it returns true [-n $a] is not false



str = checks if str is not the empty string ,if it is empty then it returns false [$a] is not false





#file test operators

-b file =checks if file is a block special file.if yes then the condition becomes true 

[-b $file] is false



-c file =checks if file is a chracter special file.if yes then the condition becomes true 

[-c $file] is false



-d file =checks if file is a directory.if yes then the condition becomes true 

[-d $file] is not true



-f file =checks if file is an ordinary file as opposed to a directory or special file.if yes then the condition becomes true 

[-f $file] is true



-g file =checks if file has its set group ID bit set.if yes then the condition becomes true 

[-g $file] is false



-k file =checks if file has its sticky bit set.if yes then the condition becomes true 

[-b $file] is false



-p file =checks if file is anamed pipe.if yes then the condition becomes true 

[-p $file] is false



-t file =checks if file descripter is open and associated with a terminal.if yes then the condition becomes true 

[-t $file] is false



-u file =checks if file has its set user id bit set ,if yes then the condition becomes true 

[-u $file] is false



-r file =checks if file is readable ,if yes then the condition becomes true 

[-r $file] is true



-w file =checks if file is writable ,if yes then the condition becomes true 

[-w $file] is true



-x file =checks if file is executable.if yes then the condition becomes true 

[-x $file] is true



-s file =checks if file has size greater than 0.if yes then the condition becomes true 

[-s $file] is true



-e file =checks if file exists,is true even if file is directory but exists 

[-e $file] is true







#for loop



for var in 0 1 2 3 4 5 6 7 8 9

do

echo $var

done





#while loop

a=0

while [ $a -lt 10 ]

do

echo $a

a= expr $a + 1

done





#until command

a=0

until [ ! $a -lt 10 ]

do

echo $a

a= expr $a + 1

done







#nested loop

a=0

while [ "$a" -lt 10 ]; do

  b="$a"

  while [ "$b" -ge 0 ]; do

    echo -n "$b "

    b= expr $b - 1

  done

  echo

  a= expr $a + 1

done







#loop control

a=10

until [ $a -gt 0]

do

echo $a

a='expr $a + 1'

done





#break

a=0



while [ $a -lt 10 ]

do

echo $a

if [ $a -eq 5 ]

then 

break

fi

a='expr $a + 1'

done





NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS

do

  Q='expr $NUM % 2'

  if [ $Q -eq 0 ]

  then

     echo "Number is an even number!!"

     continue

  fi

  echo "Found odd number"

done





#functions

Hello(){

echo "Hello shakil"

}

Hello





Hello(){

echo "Hello $1 $2"

}

Hello shakil mahmud





Hello(){

echo "Hello $1 $2"

return 10

}

Hello shakil mahmud



ret=$?

echo "Return value is $ret"







number_one(){

echo "Number one is over"

number_two

}

number_two(){

echo "Number two is over"



}

number_one



#use case



is_alive_ping()

{

ping -c 1 $1 >/dev/null

[ $? -eq 0 ] && echo Node with IP: $i is up

}

for i in 192.168.2.{1..255}

do

is_alive_ping $i & disown

done

exit





#send email

for i in $@

do

ping -c 1 $i &> /dev/null

if [ $? -ne 0 ];then

echo "'date':ping failed, $i host is down!" | mail -s "$i host is down!" mohammadshakilmahmudsohag@gmail.com

fi

done







#log monitor

LOG=/tmp/mylog.log

SECOUNDS=60

EMAIL=mohammadshakilmahmudsohag@gmail.com

for i in $@: do

echo "$i-UP!" > $LOG.$i

done

while true;do

       for i in $@;do

ping -c 1 $i >/dev/null

if [ $? -ne 0 ]; then

STATUS=$(cat $LOG.$i)

if [ $STATUS != "$i-DOWN" ]; then

echo "'date':ping failed, $i host is down!" | mail -s "$i host is down!" $EMAIL

fi

echo "$i-DOWN!" > $LOG.$i

else

STATUS=$(cat $LOG.$i)

if [ $STATUS != "$i-up" ]; then

echo "'date': ping OK, $i host is up!"

fi

echo "$i-UP!" > $LOG.$i

fi

done

sleep $SECONDS

done



comment































































































































































































































