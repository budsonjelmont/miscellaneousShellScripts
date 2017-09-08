#!/bin/bash
#line below is the path to the directory where the files to be renamed reside. Must end in a wildcard.
DIR=/users/jmbelmon/test/*
for file in $DIR
 do
 echo $file
 filename="${file##*/}"
 extension="${filename##*.}"
 filename="${filename%.*}"
#change the bit between the quotes on the line below to the string you want to add to each file name
 mv $file $filename"_xcms."$extension

#apparently the wrong way to do it is below:
#prefix=$file | cut -d'.' -f1
 #suffix=$file | cut -d'.' -f2
 #echo $prefix
 #echo $suffix
 #printf "%s_xcms%s" $prefix $suffix
	#mv $file printf -
done
