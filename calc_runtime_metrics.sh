#/bin/bash
 
NSEEDS=10
SEEDS=$(seq 1 ${NSEEDS})
JAVA_ARGS="-cp MOEAFramework-2.12-Demo.jar"
 
for SEED in ${SEEDS}
do
    java ${JAVA_ARGS} org.moeaframework.analysis.sensitivity.ResultFileEvaluator -d 3 -i ./Runtime/runtime_S${SEED}.runtime -r Borg_DTLZ2_3.reference -o ./metrics/Borg_DTLZ2_3_S${SEED}.metrics
done
