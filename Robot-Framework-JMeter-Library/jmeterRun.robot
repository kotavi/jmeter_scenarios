*** Settings ***
Library           JMeterLib.py
Library           Collections

*** Variables ***
${JMeter_path}    /usr/local/bin/jmeter
${JMeter_script_1thread1loop_path}    JMeter_test_files/jmeterTest1Thread1Loop.jmx
${JMeter_log01_path}    JMeter_test_files/jmeterTest1Thread1Loop_log01.jtl
${JMeter_log02_path}    JMeter_test_files/jmeterTest1Thread1Loop_log02.jtl
${JMeter_log03_path}    JMeter_test_files/jmeterTest1Thread1Loop_log03.jtl
${JMeter_log04_path}    JMeter_test_files/jmeterTest1Thread1Loop_log04.jtl
${JMeter_log05_path}    JMeter_test_files/jmeterTest1Thread1Loop_log05.jtl

*** Test Cases ***
jmeter2_tc1_justRunJMeter
    run jmeter    ${JMeter_path}    ${JMeter_script_1thread1loop_path}    ${JMeter_log01_path}

jmeter2_tc2_analyseAndConvertExistingJtlLog
    ${result}    analyse Jtl convert    ${JMeter_log01_path}
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}

jmeter2_tc3_runJMeterAndAnalyseAndConvertLog
    ${result}    run jmeter analyse jtl convert    ${JMeter_path}    ${JMeter_script_1thread1loop_path}    ${JMeter_log02_path}
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}

jmeter3_tc1_justRunJMeter
    run jmeter    ${JMeter_path}    ${JMeter_script_1thread1loop_path}    ${JMeter_log03_path}

jmeter3_tc2_analyseAndConvertExistingJtlLog
    ${result}    analyse Jtl convert    ${JMeter_log03_path}
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}

jmeter3_tc3_runJMeterAndAnalyseAndConvertLog
    ${result}    run jmeter analyse jtl convert    ${JMeter_path}    ${JMeter_script_1thread1loop_path}    ${JMeter_log04_path}
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}

jmeter2_tc12_justRunJMeter
    run jmeter    ${JMeter_path}    proba.jmx    ${JMeter_log05_path}

jmeter2_tc22_analyseAndConvertExistingJtlLog
    ${result}    analyse Jtl convert    ${JMeter_log05_path}
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}
