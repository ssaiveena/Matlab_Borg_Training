#/bin/bash

NSEEDS=10
SEEDS=$(seq 1 ${NSEEDS})
JAVA_ARGS="-cp MOEAFramework-2.12-Demo.jar"

REFHV= java ${JAVA_ARGS} HypervolumeEval Borg_DTLZ2_3.reference
echo $REFHV

for SEED in ${SEEDS}
do
	java ${JAVA_ARGS} HypervolumeEval ./Runtime/runtime_S${SEED}.runtime > HVs/HV_${SEED}.txt # Doesn't work
done