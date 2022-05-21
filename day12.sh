tempArray=(10 20 20 10 10 20 5 20)
for i in ${tempArray[@]}
do

  if [ $i == 10 ]
   then
     ((a++))

  elif [ $i == 20 ]
   then
     ((b++))

  else
     ((c++))
  fi

done

echo " 10 : $a"
echo " 20 : $b"
echo " 5  : $c"
