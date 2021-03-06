#!/bin/bash

# get the path of the script:
SCRIPT_PATH="`dirname \"$0\"`"              # relative
SCRIPT_PATH="`( cd \"$SCRIPT_PATH\" && pwd )`"  # absolutized and normalized
if [ -z "$SCRIPT_PATH" ] ; then
# error; for some reason, the path is not accessible
# to the script (e.g. permissions re-evaled after suid)
exit 1  # fail
fi

COSMOMC_FOLDER=$SCRIPT_PATH/../../..

cd $COSMOMC_FOLDER

# run MCMC
for param_file in $SCRIPT_PATH/Run/*.ini
do
mpirun -np 4 ./cosmomc $param_file
done

