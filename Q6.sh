#!/bin/bash
#(i)print all the lines containing the following string 
echo "(i)"
echo "Enter The File Name in which the Pattern should get checked"
read FILE
if [ -f "$FILE" ]; then
	echo "Enter The Pattern to be searched in the following File: "
	read a
     	echo "LINES WITH THE FOLLOWING PATTERN ARE: "
	grep -i "$a" $FILE
	echo "LINES WITHOUT THE FOLLOWING PATTERN ARE: "
	grep -v "$a" $FILE

#(iii)
echo "To Display Lines starting with Pattern 1 and Ending with Pattern 2
Enter the respective patterns :"
read pattern1
read pattern2
grep "$pattern1" $FILE | grep "$pattern2"

#(IV)
echo  "To Copy Contents b/w given line number till the end into another file:
if yes enter :Y for no enter :N"
read option
if [ "$option"=="Y" ]; then
	echo "Enter the Line No. :"
	read num
	tail +"$num" $FILE > new.txt
else
	echo "Process has been terminated"
fi

#(V)editor
echo "Enter The String To Be Inserted at the end of each line: "
read add
sed 's/$/'$add'/' test.txt
