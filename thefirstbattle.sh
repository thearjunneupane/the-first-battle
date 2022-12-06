#!/usr/bin/bash

echo
echo "Your name?"
read name
sleep 0.5
echo
echo "~~~ The Game Started ~~~"
echo
echo
sleep 0.5
echo "|       LEVEL 1       |"

#First battle

beast=$(( $RANDOM % 2))
echo
sleep 0.5
echo "Hey $name! Your first Beast approaches. Prepare to Battle!!;Pick a number between 0-1." | tr ";" "\n"
read player

if [[ $beast == $player ]];  then
	echo
	echo "SMASHED!! Beast vanquished!!;Congrats fellow $name;You got LEVEL 1." | tr ";" "\n"
else
	echo
	echo "You Died!! $name"
	echo "The number was $beast"
	exit
fi

sleep 2
echo
echo
echo "~~~ Boss Battle. Get Scared!! ~~~"
echo
echo
sleep 0.5
echo "|       LEVEL 2       |"

sleep 0.5
echo

echo "It's Meranganet.;Pick a number between 0-4" | tr ";" "\n"
read tarnished
beast=$(( $RANDOM % 5))

if [[ $beast == $tarnished ]]; then
	echo
	echo "SMASHED!! Margret vanquished!!;Congrats fellow $name;You got LEVEL 2." | tr ";" "\n"
else
	echo
	echo "Oh no!! YOU Died $name"
	echo "The number was $beast"
	exit
fi

sleep 2
echo
echo
echo "~~~ Grand Battle. Be alert! ~~~"
echo
echo
sleep 0.5
echo "|       LEVEL LAST       |"

sleep 0.5
echo

echo "It's BORONBO - The God.;Pick a number between 0-9" | tr ";" "\n"
read tarnished
beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished ]]; then
	echo
	echo "SMASHED!! Boronbo vanquished!!;Congrats fellow $name;You got all the levels." | tr ";" "\n"
	echo 
	echo "~~~ The Game Over ~~~"
	exit
else
	echo
	echo "Wasted!! You Died $name.;The number was $beast.;But Well played!" | tr ";" "\n"
	exit
fi
