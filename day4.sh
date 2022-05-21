for i in `ls`
do
  touch x.java y.py z.js day4.sh algorithm.txt
  mkdir -p x/java y/py z/js
  mv x.java x/java | mv y.py y/py | mv z.js z/js
done

