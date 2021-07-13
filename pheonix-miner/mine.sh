#!/bin/bash

echo "---Starting---"
echo ""
echo "Project: PhoenixMiner $MINERV"
echo "Author:  phitoduck"
echo "Base:    $BASE"
echo "Driver:  $INSTALLED_DRIVERV"
echo ""
echo "Wallet:  $WALLET"
echo "Pool:    $POOL"
echo ""
echo "Starting PhoenixMiner $MINERV as $(id) with the following arguments:"
# echo "-pool $POOL -wal $WALLET.$PASSWORD -tt $TT  -tstop $TSTOP -tstart $TSTART -cdm 1 -cdmport 5450 $ADDITIONAL"
echo "-pool $POOL -wal $WALLET -worker $WORKER -tt $TT -tstop $TSTOP -tstart $TSTART -cdm $CDM_LEVEL -cdmport 5450 $CDM_ADDITIONAL_PORT -coin $COIN -mode $MODE -rmode $RMODE -log $LOG_OUTPUT_STRATEGY -logfile $LOG_FILE -logdir $LOG_DIR -logsmaxsize $LOG_FILE_MAX_SIZE_MB -retrydelay $RETRY_DELAY -ftimeout $FTIMEOUT"
echo ""
cd /home/docker/phoenixminer
# ./PhoenixMiner -pool $POOL -wal $WALLET.$PASSWORD -tt $TT -tstop $TSTOP -tstart $TSTART -cdm 1 -cdmport 5450 $ADDITIONAL

# eric: customizing the startup command; refer to the .env file or "PhoenixMiner --help" to see what each of these mean
./PhoenixMiner \
    -pool "$POOL" \
    -wal "$WALLET" \
    -worker "$WORKER" \
    -tt "$TT" \
    -tstop "$TSTOP" \
    -tstart "$TSTART" \
    -cdm "$CDM_LEVEL" \
    -cdmport "$CDM_ADDITIONAL_PORT" \
    -coin "$COIN" \
    -mode "$MODE" \
    -rmode "$RMODE" \
    -log "$LOG_OUTPUT_STRATEGY" \
    -logfile "$LOG_FILE" \
    -logdir "$LOG_DIR" \
    -logsmaxsize "$LOG_FILE_MAX_SIZE_MB" \
    -retrydelay "$RETRY_DELAY" \
    -ftimeout "$FTIMEOUT"
