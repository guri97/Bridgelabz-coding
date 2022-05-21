function message() {
  echo "Hello Everyone"
}

message


function add() {
  echo "Addition of 3 no's: $(($1+$2+$3))"
}
add 10 20 30
add 500 100 200
add 30 50 70


function add() {
  echo $(($1+$2+$3))
}
output="$( add 20 30 40)"
echo "Answer: $output"

