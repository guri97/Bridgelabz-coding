array=[10,20,30,40,10,10,10,20];

for elem in ${array[@]}
do
    int count=0
    for ele in ${array[@]}
    do
         if (ele=elem)
             count++
    echo"elem $count""
    done
done
