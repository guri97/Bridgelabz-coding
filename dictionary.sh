declare -A movies
movies[english]="Spiderman"
movies[tamil]="Beast"
movies[telugu]="Pushpa"
movies[hindi]="Shershah"
echo "Dictionary: ${movies[@]}"
movies[malayalam]="Kurup"
movies[telugu]="Bahubali"
unset 'movies[english]'
echo "List of Movies: ${movies[@]}"

