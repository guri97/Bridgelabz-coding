for i in `ls *.java`
do
  fileName = `echo $i | awk -F. '{print $1}'`
  if [ -d $fileName ]
    then
      rm -rf $fileName
  fi
  mkdir fileName
  cp $i fileName

done
