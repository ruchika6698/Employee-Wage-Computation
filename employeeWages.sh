#!/bin/bash -x

#constant
PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8


declare -A dailyWage
echo "Welcome to Employee wage"

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

