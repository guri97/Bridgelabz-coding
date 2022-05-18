sqf=43560 # 1 acre = 43560 sqft
read -p "enter width of rectangular plot in feets:" width
read -p "enter height of rectangular plot in feets: "  height
read -p "no of plots : " a
b=$(($width*$height*$a))
acre=`echo $b $sqf | awk '{print $1/$2}'`
echo "area of 25 plots in acre : $acre"
