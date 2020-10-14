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

function validEmailId ()
{
   echo "Enter your Email Id "
   read  emailId

   pattern="[a-zA-z]+\.([A-Za-z0-9]*)+@[A-Za-z]+\.(([a-z]{2})*)\.(([a-z]{2})*)$"

   if [[ $emailId =~ $pattern ]]
   then
       echo "Email ID is Valid"
   else
       echo "Email ID is Invalid"
   fi
}

function validMobileFormat ()
{
   echo "Enter your Mobile No "
   read  mobileNo

   pattern="(91){1} ?[98765]{1}[0-9]{9}$"

   if [[ $mobileNo =~ $pattern ]]
   then
       echo "Mobile Number is Valid"
   else
       echo "Mobile Number is Invalid"
   fi
}

function validPassword ()
{
   echo "Enter your Password "
   read  password

   pattern="(?=.*[A-Z])(?=.*[0-9])(?=.*[!?#$]{1})[a-zA-Z0-9!?#$]{8,32}$"

   if [[ $password =~ $pattern ]]
   then
       echo "Password is Valid"
   else
       echo "Password is Invalid"
   fi
}

function validSampleEmail()
{
   echo "Enter your email "
   read  email

   pattern="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"

   if [[ $email =~ $pattern ]]
   then
       echo "email is Valid"
   else
       echo "email is Invalid"
   fi
}


function main ()
{

   validFirstName
   validLastName
   validEmailId
   validMobileFormat
   validPassword
   validSampleEmail
}

main
