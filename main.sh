#!/bin/bash
echo "Welcome in BASHFIGHTER ! Let the game begin !"
read
lifep1=100
lifep2=100
attack=10
critique=20

#function random_crit {
#	min=0
#	max=100
#	number=$(expr $min + $RANDOM % $max)
#}

while [[ $lifep1 -ge 0 || $lifep2 -ge 0 ]]
do
	clear
	echo " Player 1 - $lifep1 HP // Player 2 - $lifep2 HP"
	echo "---------------------------------------"
	echo "Player 1's turn !"
	read
	lifep2=$(($lifep2-$attack))
	echo "Player 1 attack Player 2, he have $lifep2 HP left..."
	if [[ $lifep2 -le 0 ]]
	then
		clear
		echo " Player 1 - $lifep1 HP // Player 2 - $lifep2 HP"
		echo "---------------------------------------"
		echo "Player 1 win the game with $lifep1 HP left ! WPGG !"
		break
	fi
	read
	clear
	echo " Player 1 - $lifep1 HP // Player 2 - $lifep2 HP"
	echo "---------------------------------------"
	echo "Player 2's turn !"
	read
	lifep1=$(($lifep1-$attack))
	echo "Player 2 attack Player 1, he have $lifep1 HP left..."
	if [[ $lifep1 -eq 0 ]]
	then
		clear
		echo " Player 1 - $lifep1 HP // Player 2 - $lifep2 HP"
		echo "---------------------------------------"
		echo "Player 2 win the game with $lifep2 HP left ! WPGG !"
		break
	fi
	read
done
