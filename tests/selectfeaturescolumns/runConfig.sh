#!/bin/sh

TEST_ROOT=$PWD
TASKLIB=$TEST_ROOT/src
INPUT_FILE_DIRECTORIES=$TEST_ROOT/data
S3_ROOT=s3://moduleiotest
WORKING_DIR=$TEST_ROOT/job_1

COMMAND_LINE="java -cp $TASKLIB/SelectFeaturesColumns.jar:$TASKLIB/gp-modules.jar org.genepattern.modules.selectfeaturescolumns.SelectFeaturesColumns $INPUT_FILE_DIRECTORIES/all_aml_train.gct $WORKING_DIR/testout.gct -t1-2"


DOCKER_CONTAINER=genepattern/docker-java18

S3_ROOT=s3://moduleiotest
JOB_DEFINITION_NAME="Java18_Oracle_Generic"
JOB_ID=gp_job_JAVA18_$1
JOB_QUEUE=TedTest


