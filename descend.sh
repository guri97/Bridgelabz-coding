#!/bin/bash

nameArr=("Leia", "Darth Vader", "Anakin", "Han Solo", "Yoda")

IFS=$'\n'           ## only word-split on '\n'
nameArr=( $(printf "%s\n" ${nameArr[@]} | sort -r ) )  ## reverse sort

declare -p nameArr  ## simply output the array
