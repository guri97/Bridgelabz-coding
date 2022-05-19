# doc 01 problem



read -p "enter one input :" a
read -p "enter second input :" b
read -p "enter third input :" c
uc1=$(($a+$b*$c))
echo "compute : $uc1"
uc2=$(($a*$b+$c))
echo "compute : $uc2"
uc3=$(($c+$a/$b))
echo "compute : $uc3"
uc4=$(($a%$b+$c))
echo "compute : $uc4"
declare -A results
results[1]="$uc1"
results[2]="$uc2"
results[3]="$uc3"
results[4]="$uc4"
echo ${results[@]}
array=()
j=0
for i in ${results[@]}
do


        array[$j]="$i"
((j++))
done
echo "${array[@]}"

for (( i=0 ; i < ${#array[@]} ; i++ ))
do
for (( j=0 ; j < ${#array[@]}; j++ ))
do
if [[ ${array[$j]} -lt ${array[$i]} ]]
then
nit=${array[$i]}
array[$i]=${array[$j]}
array[$j]=${nit}
fi
done
done
for n in "${array[@]}"
do
echo "$n"
done




for (( i=0 ; i < ${#array[@]} ; i++ ))
do
for (( j=0 ; j < ${#array[@]}; j++ ))
do
if [[ ${array[$j]} -gt ${array[$i]} ]]
then
nit=${array[$i]}
array[$i]=${array[$j]}
array[$j]=${nit}
fi
done
done
for n in "${array[@]}"
do
echo "$n"
done


