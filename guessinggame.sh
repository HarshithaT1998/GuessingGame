function guessnooffiles {
total=$(ls -l | wc -l)
while true
do
echo "Guess number of files in your directory"
read a

if ! [[ $a =~ ^[0-9]+$ ]]
then
echo "Sorry number of files cant be in negative"

elif [[ $a -ne $total ]]
then
if [[ $a -gt $total ]]
then
echo "Your guess is more than your number of files present in your directory. Please try again"
else
echo "Your guess is less than your number of files present in your directory. Please try again"
fi

else
echo "Your guess is correct. Congratulations!!"
echo
echo "Done"
echo
break
fi
done
}

guessnooffiles
