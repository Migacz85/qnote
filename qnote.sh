#!/bin/bash
#note script - is adding a content from the clipboard to 
#specified file. 

dir=/home/migacz/Coding/Clipboard/clip.note

if [[ $1 == "clip" || $2 == 'clip' || $3 == 'clip' ]]
then
		dir=/home/migacz/Coding/Clipboard/clip.note
		#date >> $dir
	        xsel -b >> $dir 
		cat $dir
		echo " "
fi


if [[ $1 == "del" ]]
then
	echo "Your current clipboard file witch is located here: "
	echo " "
	echo $dir
	echo " "
	echo "is deleted."
	rm $dir
fi
if [[ $1 == "help" ]]
then
#xsel -b >> dir 
	printf "show - show your saved notes \n"
	printf "c - adding comment \n"
	printf "clip - write clip to the file \n"
	printf "d 1 - delete one line \n"
	printf "n - comment on new line\n"

	        
fi

if [[ $1 == "d" ]]
then
 	head -n -$2 $dir > file.txt.new && mv file.txt.new $dir	
	cat $dir
fi

# add a comment when pasting clipboard
if [[ $1 == "c" ]]
then
	printf " -  $2"  >> $dir
	cat $dir 
	echo "" 
fi

if [[ $1 == "n" ]]
then
	#echo "" >> $dir 
	printf "\n - $2 "  >> $dir
	cat $dir
	echo "" 			
fi	


if [[ $1 == "show" ]] 
then
	cat $dir
	echo " "

fi

