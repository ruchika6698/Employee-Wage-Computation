#!/bin/bash -x

PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
employeetype=0
daysEmployeeWorkedInMonth=20
WorkingHoursForMonth=100
workingHoursForDay=0
day=0
MONTHLY_WORKING_DAYS=20
MONTHLY_WORKING_HOURS=100
employeeMonthlyWage=0
workingHoursForMonth=0

declare -A dailyWage

printf "Welcome to Employee wage\n"

#function employeeAttendance
function employeeAttendance() {
	Number=$(( RANDOM%2 ))
	if [ $Number -eq 1 ]
	then
		printf "Employee is present\n"
	else
		printf "Employee is absent\n"
	fi
}

employeeAttendance

#DailyEmployeeWage function
function DailyemployeeWage(){
	echo “$(( $WAGE_PER_HOURS * $FULL_DAY_HOURS ))”
}

#function for employee Working part time or full time
function employeeType(){
	employeetype=$(($RANDOM%2))
	if [ $employeetype -eq 8 ]
	then
		Workhours=$employeetype
		printf "Full time Employee \n”
	else
		Workhours=$employeetype
		printf “Part time Employee \n”
	fi

	printf “$Workhours \n”
}

Printf “1.Full Time Employee \n”
Printf “2.Part Time Employee \n”
read N

#Use Case Statement in function and create a function to get working hours 
function WorkinghoursforDay() {
	case $N in
	1)
		workHours=$FULL_TIME_HOUR
		printf "workHours \n"
	;;
	2)
		workHours=$PART_TIME_HOUR
		printf "workHours \n"
	;;
	esac

	if [[ $(( $MONTHLY_MAX_WORKING_HOURS-$workingHoursForMonth )) -lt $FULL_DAY_HOUR ]]
	then
		workHours=$PART_TIME_HOUR
	fi
	printf "$workHours \n"
}

while [[ $daysEmployeeWorkedInMonth -lt $MONTHLY_WORKING_DAYS ]] && [[ $workingHoursForMonth -lt $MONTHLY_WORKING_HOURS ]]
do
	EmployeePresent=$( employeeAttendance )
	if [ $ EmployeePresent -eq 1 ]
	then
		employeeWorkingTime=$( employeeType )
		WorkinghoursforDay=$( WorkinghoursforDay $workHours )
		wageforDay=$( DailyemployeeWage $WAGE_PER_HOUR $WorkinghoursforDay )
		(( daysEmployeeWorkedInMonth++ ))
		workingHoursForMonth=$(( $workingHoursForMonth+$workHours ))
	else
		wageforDay=0
	fi
	dailyWage[$days]=$wageforDay
	(( days++ ))
	employeeMonthlyWage=$(( $employeeMonthlyWage+$wageforADay ))
done

