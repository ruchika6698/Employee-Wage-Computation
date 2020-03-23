#!/bin/bash -x


#constant
PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8

declare -A dailyWage

printf "Welcome to Employee wage\n"

function employeeAttendance() {
	Number=$(( RANDOM%2 ))
	if [ $Number -eq 1 ]
	then
		echo "Employee is present"
	else
	echo "Employee is absent"
	fi
}

employeeAttendance


function DailyemployeeWage(){
	echo “$(( $WAGE_PER_HOURS * $FULL_DAY_HOURS ))”
}

