#!/bin/bash
################## bakup.d #######################
: ' 1.0 : This script runs bakup and bakmnt. It writes to a log
       file as defined by $LOG by custom made function
       writetolog. Replaces bakup.sh.
       Values of varibles are as follows:
	* LOG  --> file path to log file, uses DATE as title
'

################# bakup.d interface ##############
LOG=/var/log/bakup/$(date +%m%d).log

function writetolog {
        echo "[$(date "+%a %b %d %T")] $1" >> $LOG;
}

################# bakup.d body #######################
writetolog "BEGIN"
bakup >> $LOG
bakmnt umount
writetolog "END"
