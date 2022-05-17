for x in 'ls *.java *.py *.js'
do
	filename='echo $x | awk -F. '{ print $1 }'
	if [ -d $filename ]
	then
	rm -rf $filename
	fi
	mkdir $filename
	filename2='echo $x | awk -F. '{ print $2 }'
	if [ -d $filename2 ]
	then
	rm -rf $filename/$filename2
	fi
	mkdir $filename/$filename2
	cp -r $x $filename/$filename2
done
