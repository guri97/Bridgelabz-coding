for x in `ls *.java`

do

    fileName=`echo $x | awk -F. '{ print $1 }'`

    if [ -d $fileName ]

    then

        echo "********************Inside IF Block*******************"

        rm -rf $fileName

    fi   

    mkdir $fileName

    cp -r $x $fileName

done
