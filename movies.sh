declare -A movies





movies[english]="spiderman"

movies[tamil]="beast"

movies[telugu]="pushpa"

movies[kannada]="kgf2"

movies[hindi]="tadat"





echo "Dictionary : ${movies[@]}"



movies[malayalam]="kurup"



movies[telugu]="bahubali"



unset 'movies[english]'
