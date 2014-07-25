#!/bin/bash

# Creates the standard sourcesets of a java application in the passed location
# Creates:
#  src/
#    main/
#      java/
#      resources/
#    test/
#      java/
#      resources/

location="."
if [ $# -eq 1 ] 
  then
    # param was supplied
    location=$1
  elif [ $# -gt 1 ]
    then
      echo 'too much params provided...'
      echo 'usage: create_java_sourcesets.sh [location]'
      exit -1
fi

mkdir -p $location/src/main/java
mkdir -p $location/src/main/resources

mkdir -p $location/src/test/java
mkdir -p $location/src/test/resources
