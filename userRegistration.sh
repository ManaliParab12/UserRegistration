#!/bin/bash -x

echo "Welcome to User Registration"

function validFirstName ()
{
   echo "Enter your First Name "
   read  fName

   pattern="^[A-Z]{1}[a-z]{2,10}$"

   if [[ $fName =~ $pattern ]]
   then
       echo "First Name is Valid"
   else
       echo "First Name is Invalid"
   fi
}

validFirstName
