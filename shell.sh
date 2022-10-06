
    #!/bin/bash 
     : '
    echo "Hello Shakil" 
    echo "how are you" 
    
    
    #variables
    myname=A
    myos=Linux
    text=1+2
    echo your name:$myname
    echo your os:$myos
    echo $text
    
    
   
    
    myvar="hello"
    echo $myvar
    echo "$myvar"
    echo '$myvar'
    echo \$myvar
    
    
    #Read
    echo -n "Enter your name:"
    read name
    echo -n "Enter your student no:"
    read stdno
    echo "your Name:$name"
    echo "your student ID:$stdno"
    
    
    #shell arithmetic
    a=20
    b=10
    sum=`expr $a + $b`
    echo "Summation $sum "
    sub=`expr $a -$b`
    mul=`expr $a\*$b`
    div=`expr $a / $b`
    echo  “  $sum  ,  $sub, $mul, $div “
    #Error 
    
    a=20.5
    b=8.3
    sum=`expr $a + $b | bc `
    echo “ Summation $sum “
     #Error
     
     #conditional statement If else
     echo "Enter first number"
     read num1
     echo "Enter second number"
     read num2
     if [ $num1 -gt $num2 ]; then 
     echo "$num1 is greater than $num2"
     elif [ $num1 ‐lt $num2 ] ;  then 
     echo "$num1 is less than $num2" else
     echo "$num1 and $num2 are equal"
     fi
     #Error
      
      #case1
      echo “Is it morning? Please answer yes or no” read timeofday
   case “$timeofday” in 
      yes) echo “Good Morning”;; 
       no ) echo “Good Afternoon”;; 
         y ) echo “Good Morning”;; 
         n ) echo “Good Afternoon”;;
         * ) echo “Sorry, answer not recognized”;; 
    esac
    
    #case2
       echo “Is it morning? Please answer yes or no” read timeofday
    case “$timeofday” in
    yes | y | Yes | YES ) echo “Good Morning”;; 
    n* | N* )    echo “Good Afternoon”;; 
   * )    echo “Sorry, answer not recognized”;;
   esac
   
   #For ls
   for i in `ls`
do
      echo $i
done

#for 1 to 10
for(( i=0;i<=10;i++))
do
      echo $i
done

#while
i=1
while [ $i –le 10 ]
do
echo “ $i “
done


password="abc"
echo "Enter password"
read pass
while [ $pass != $password ]
do 
echo "Wrong Password, Try again"
read  pass
done
echo "Write Password"


#until
i=1
until [ $i –gt 10 ]
do
echo “ $i “
done


password="abc"
echo "Enter password"
read pass
until [ $pass != $password ]
do 
   echo "Wrong Password, Try   again"
    read  pass
done
echo "Write Password"


#function
foo() { 
   echo “Function foo is executing”
} 
  echo “script starting” 
  foo
  echo “script ending”

'

     

   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    