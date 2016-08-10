#!/bin/sh
########################################  init.sh  ################ Meng Yue # August 04 2016 ###
#################################################################################################
# this is a init shell and will run at every beginning of the shell script under this directory #
# mainly to declare some global variables and global parameters.                                #
# please do not arbitary alter the format of this file(may cause error)                         #
#################################################################################################


# loading file path

# -common used path
WORKSPACE=~/student/mengyue/drill
JAVAPROJ=$WORKSPACE/db_java/db_manager
TEST=$WORKSPACE/test
SCRIPT=$TEST/script

# -specific path 
Config_File=$JAVAPROJ/config/param.config
Gson_Jar=$JAVAPROJ/lib/gson-2.5.jar
PostgreSQL_Jar=$JAVAPROJ/lib/postgresql-9.4.1209.jre6.jar
Src_Path=$JAVAPROJ/out/production/db_manager

test_Dir=$TEST/
ChangDtaParam_Script_File=$SCRIPT/changeDtaParamToOpenLoop.py
GenHistFlow_Script_File=$SCRIPT/runDM_AggregateDynamitrSenFlow.py
Dat2Csv_Script_File=$SCRIPT/demand_dat2csv_new.py
Perturb_Script_File=$SCRIPT/Perturb_demand_new.py

Perturb_Input_Path=$TEST/originDemand/
Perturb_Demand_Dat_Path=$TEST/demand_dat/
Perturb_Demand_Csv_Path=$TEST/demand_csv/

DynaMIT_Path=$TEST/DynaMIT/
MITSIM_Path=$TEST/MITSIM/
Dtaparam_Path=$TEST/DynaMIT/
DB_Save_Path=$TEST/DBSAVE/

# running parameters
# the days you want to run at
# the DAY_NUM should no bigger than the size of the DATE array!!! 
DAY_NUM=1
DATE[0]="2016/06/02"
DATE[1]="2016/01/02"
DATE[2]="2016/01/03"
DATE[3]="2016/01/04"
DATE[4]="2016/01/05"
DATE[5]="2016/01/06"
DATE[6]="2016/01/07"
DATE[7]="2016/01/08"
DATE[8]="2016/01/09"
DATE[9]="2016/01/10"
DATE[10]="2016/02/01"
DATE[11]="2016/02/02"
DATE[12]="2016/02/03"
DATE[13]="2016/02/04"
DATE[14]="2016/02/05"
DATE[15]="2016/02/06"
DATE[16]="2016/02/07"
DATE[17]="2016/02/08"
DATE[18]="2016/02/09"
DATE[19]="2016/02/10"
DATE[20]="2016/03/01"
DATE[21]="2016/03/02"
DATE[22]="2016/03/03"
DATE[23]="2016/03/04"
DATE[24]="2016/03/05"
DATE[25]="2016/03/06"
DATE[26]="2016/03/07"
DATE[27]="2016/03/08"
DATE[28]="2016/03/09"
DATE[29]="2016/03/10"
DATE[30]="2016/04/01"
DATE[31]="2016/04/02"
DATE[32]="2016/04/03"
DATE[33]="2016/04/04"
DATE[34]="2016/04/05"
DATE[35]="2016/04/06"
DATE[36]="2016/04/07"
DATE[37]="2016/04/08"
DATE[38]="2016/04/09"
DATE[39]="2016/04/10"
DATE[40]="2016/05/01"
DATE[41]="2016/05/02"
DATE[42]="2016/05/03"
DATE[43]="2016/05/04"
DATE[44]="2016/05/05"
DATE[45]="2016/05/06"
DATE[46]="2016/05/07"
DATE[47]="2016/05/08"
DATE[48]="2016/05/09"
DATE[49]="2016/05/10"
# defining global functions
# output normal message 
# usage: print "message"
print(){
	echo -e
	echo -e
	printf "\e[36;1m$1\n\e[0m"
}

# output error message
# usage: error "error message"
error(){
	echo -e
	printf "\e[31;1m[ERROR]:$1\n\e[0m"
}

# output warning message
# usage: warning "warning message"
warning(){
	echo -e
	printf "\e[33;1m[WARN]:$1\n\e[0m"
}

# output welcome message
# usage: print_welcome "welcome message"
print_welcome(){
	echo -e
	printf "\e[34;1m$1\n\e[0m"
}

#WELCOME MESSAGE
# usage: welcome
welcome(){
	if [[ $COLUMNS >79 ]] ;then
	print_welcome "==============================OcSimu2Db_Platform==============================
======================================================MENG YUE==August 3,2016="

	elif [[ $COLUMNS > 59 ]] ;then
	print_welcome "====================OcSimu2Db_Platform====================
==================================MENG YUE==August 3,2016="

	elif [[ $COLUMNS > 39 ]] ;then
	print_welcome "==========OcSimu2Db_Platform==========
==============MENG YUE==August 3,2016="

	else
	print_welcome "=====OcSimu2Db_Platform=====
===MENG YUE===August 3,2016="
	fi
}
