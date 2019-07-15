#!/bin/bash

echo "*** START"

# Get inputs; -n somename for name input
while getopts :n: opt
do
  case $opt in
     n ) name="$OPTARG" ;;
     ? ) usage ;;
  esac
done
shift $(( OPTIND - 1 ))

echo "the name is $name"

# Create directory, if it does not already exist
mkdir -p "../users/${name}"

echo "*** END"
