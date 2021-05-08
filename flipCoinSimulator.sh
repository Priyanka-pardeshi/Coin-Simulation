#! /bin/bash -x
toss=$((1+RANDOM%2))
if (($toss==1))
then
        echo "its Head"
        elif (($toss==2))
        then
                echo "its tail"
        else
                echo "invalid choice"
fi




