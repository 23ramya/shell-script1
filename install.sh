#!/bin/bash


USERID=$(id -u)

if [ $USERID  -ne 0 ]

then 

    echo "please run this script with root access."
    exit 1 # manually exit if error comes
else 

    echo "you are super user."

fi

dnf install mysql -y

if [ $? -ne 0 ]
then
   echo "Installation of mysql....FAILURE"
   exit 1
else
    echo "Installation of MYSQL...SUCESS"
fi 

dnf install git -y

if [$? -ne 0 ]
then
    echo "Installation of GIT..... FAILURE"
    exit 1
else
    echo "Installation of GIT........SUCESS"
fi      

echo "is script proceeding?"
