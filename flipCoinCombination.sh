declare -A CoinFlip

isFlip=0
maximum=0
temp=0

function totalFlip()
{
	for((index=0; index<$1; index++))
	do
		side=""
		for((indexOne=0; indexOne<$2; indexOne++))
		do
			flipCoin=$((RANDOM%2))
			if [ $flipCoin -eq $isFlip ]
			then
				side+=H
			else
				side+=T
			fi
		done
		CoinFlip[$side]=$((${CoinFlip[$side]}+1))
	done
	echo "Count of all combination     :${CoinFlip[@]}"
}
function totalFlipPercentage()
{
	for count in ${!CoinFlip[@]}
	do
		CoinFlip[$count]=`echo "scale=2; $((${CoinFlip[$count]}))/$times*100 " | bc`
		temp=${CoinFlip[$count]}
		if (( $(echo "$temp >= $maximum"| bc) ))
		then
			maximum=$temp
			key=$count
		fi

	done
}

read -p "Enter number of times you want to flip the coin:" times
read -p "Enter choice 1)Singlet 2)Doublet 3)Triplet: " coins
totalFlip $times $coins
echo "All head and tail combination:${!CoinFlip[@]}"
echo "Percentage of all combination:${CoinFlip[@]}"
echo "Max winning combination      :" Heads and Tails
