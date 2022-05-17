team=("Virat" "Dhoni" "Rohit")





echo "India Team : ${team[@]}"



team[3]="Rahul"

team[4]="Pant"





echo "After Adding India Team : ${team[@]}"





unset 'team[1]'





echo "After removing  : ${team[@]}"





team[3]="Rahul"

team[2]=""Rohitsharma



echo "After Updating  : ${team[@]}"



echo "Only Index numbers ${!team[@]}"

echo "Length of an array ${#team[@]}"
