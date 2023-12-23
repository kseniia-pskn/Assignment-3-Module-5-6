#!/bin/bash

JMETER_HOME=/Users/kseniia.piskun/Desktop/apache-jmeter-5.6.2
TEST_PLAN=user_api_test.jmx
CSV_FILE=test_data.csv
REPORT_FOLDER=assignment3_piskun

$JMETER_HOME/bin/jmeter -n -t "$JMETER_HOME/$TEST_PLAN" -JbaseURL=https://petstore.swagger.io -JcsvFilePath="$JMETER_HOME/$CSV_FILE" -l "$REPORT_FOLDER/test_results.jtl" -e -o "$REPORT_FOLDER"
