#! /bin/bash -x

#declared an array to save result of toss
declare -a arr1

#declared an count variable to count an head and tails
countH=0
countT=0
i=0
while [ 'true' ]
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
        if (($countH==21))
        then
                echo "head comes 21 times"
                break;
        fi
        if (($countT==21))
        then
                echo "tail comes 21 times"
                break;
        fi
((i++))
done

# Checking winner win by how many count
if (($countH>$countT))
then
        temp=$(($countH-$countT))
        echo "Head is Winner by $temp"
else
        temp2=$(($countT-$countH))
        echo "Tail is winner by $temp2"
fi


