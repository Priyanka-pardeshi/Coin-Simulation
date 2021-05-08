#! /bin/bash -x

read -p "how many times you wanna flip coin?" n
#declared an array to save result of toss
declare -a arr1
countH=0
countT=0

for ((i=1; i<=n; i++))
do
toss=$((1+RANDOM%2))
if (($toss==1))
then
        arr1[$i]="head"
        countH=$(($countH+1))
        elif (($toss==2))
        then
                arr1[$i]="tail"
                countT=$(($countT+1))
        else
                echo "invalid choice"
fi
done
echo "$countH times Head Wins and $countT times tail wins "



