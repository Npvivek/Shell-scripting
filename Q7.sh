#!/bin/bash
#(VIII)
echo "Enter The Name of the File for which all duplicates should get eliminated: "
read FILE
echo "deleting all duplicate files of $FILE "
rdfind -deleteduplicates true ~/Downloads/$FILE

