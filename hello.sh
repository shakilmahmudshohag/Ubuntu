#! /bin/bash
: '
# this is comment
echo "Hello world"

echo Our shell name is$BASH
echo our shell version name is $BASH_VERSION
echo our home directory is $HOME
echo our current working directory is $PWD

#using variable and comment
name=shakil
val =10
echo The name is $name
echo The value is $val

#Read user input
 echo "Enter name:"
 read name
 echo "Enterd name: $name"

 #Read user multi input
 echo "Enter name:"
 read name1 name2 name3
 echo "Names: $name1,$name2,$name3"
 
 #user name & not seen password
 read -p 'Enter username:' user_var
 read -sp 'Enter password:' pass_var
 echo
 echo "username:$user_var"
 echo "password:$pass_var"
 
 #take variable with arry
 echo "Enter names:"
 read -a names
 echo "Names: ${names[0]}, ${names[1]}"
 
 #by defult
 echo "Enter name:"
 read
 echo "Name: $REPLY"
 
 #pass argument to a bash script
 echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'
 
 args=("$@")
 echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
 #all argument
echo $@
#number of argument
echo $#
 
 
 #if statement(if then,if then else,if elif else)
 #problem -command not found
  #problem -command not found
   #problem -command not found
 count=10

 if (($count > 9))
  then
     echo "condition is true"
fi


'
word=a

if [[$word =="b"]]
 then
    echo "condition b is true"
elif [[$word == "a"]]
 then
    echo "condition a is true"
else
    echo "condition is false"
fi
:'

#file test operator 
 echo -e "Enter the name of the file: \c"
 read file_name

 if [ -e $file_name ]
 then
    echo"$file_name found"
   else
      echo"$file_name not found" 
fi

#how to append output to the end of the text file
echo -e "Enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then
     if [ -w $file_name ]
     then
         echo "Type some text data.to quit press ctrl + d"
     else
         echo "The file do noyt write permisions"
     fi
else
    echo "$file_name not exits"
fi
 
 '
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 