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

function validLastName ()
{
   echo "Enter your Last Name "
   read  lName

   pattern="^[A-Z]{1}[a-z]{2,10}$"

   if [[ $lName =~ $pattern ]]
   then
       echo "Last Name is Valid"
   else
       echo "Last Name is Invalid"
   fi
}

function main ()
{

   validFirstName
   validLastName
}
main
