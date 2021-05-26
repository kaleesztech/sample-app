#!/bin/bash
#
#
# Created 2021-05-26 by Kaleeswaran Kalimuthu  >
#
# Description:
# Running npm/yarn deployment
#
print_help() {
    echo -e "See below to run the deployment for frontend and backend "
    echo -e "$0 --frontend"
    echo -e "$0 --backend"
    echo -e "$0 --all"
}

check_status(){
    check_status=$1
    if [[ $check_status -gt 0 ]]; then
        echo -e "Deployment failed at frontend / backend level"
        exit 1
    else
        echo -e "Deployment is completed successfully - $(date)"
    fi
}
backend(){
	if [[ -d react-express-app/ ]]; then
		yarn install
    	yarn run build 
    	yarn run start
    	check_status $?
	fi
}
frontend(){
	if [[ -d react-express-app/frontend ]]; then
		yarn install
    	yarn run build 
    	yarn run start
    	check_status $?
	fi
}
all(){
	echo -e "Executing backend deployment now"
	backend
	echo -e "Executing frontend deployment now"
	frontend
	echo -e "Both backend and frontend deployment completed successfully"
}