read -p "Enter a number between 1-3 " number



perHourCost=100

logHour=8

isFulltime=1

isParttime=2

isUnemployee=3

salary=0



                if [ $number == $isFulltime ]

                then



           salary=$((logHour*perHourCost))

                        echo "Employee Joined As Full-Time"

                        echo "Income Is $salary"

       elif [ $number == $isParttime ]

                then

                        salary=$((logHour*perHourCost))

           salary=$((salary/2))

                        echo "Employee Joined As Part-Time"

                        echo "Income Is $salary"

                elif [ $number == $isUnemployee ]

                then

                        echo "Employee Is UnAuthorized Person ..."

                        echo "Income Is $salary"

                else 

                        echo "Your Given Input Is Invalid , Please Try Again !!!"

         fi
