#!/bin/bash -x

#Constant
PART_TIME_EMPLOYEE=4

FULL_TIME_EMPLOYEE=8

WAGE_PER_HOURS=20

FULL_DAY_HOURS=8

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

