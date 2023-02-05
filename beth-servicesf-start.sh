#!/usr/bin/env bash

source colored-echo

#./build-dependencies

if [ $? != 0 ]
then
    echoError "ERROR: Exception in building dependencies..."
    exit 1
else
  TARGET_FILE=./sbt.sh

  printf "************************** STarting up Beth Services Demo **********\n"
  printf "Please use http://localhost:9007 to open the application in the browser in Normal Mode and https://localhost:9447 to open the application in Secure Mode\n"
  $TARGET_FILE -Dhttp.port=9007 -Dhttps.port=9447 -Dakka.http.parsing.max-uri-length=16k run
fi
