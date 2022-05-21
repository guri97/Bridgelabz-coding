echo "Enter the number"
read num
function plcheck
{
temp=$num
rev=0
while [ $num -gt 0 ]
do
s=$(( $num % 10 ))
num=$(( $num / 10 ))
rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ]
then
   echo "Number is Palindrome"
else
   echo "Number is not a Palindrome"
fi
}
r= plcheck $num
echo "$r"
