# What is qnote ?

Qnote is a small program that is living in bash shell, it helps to save files from your 
clipboard to specified flie in dir directory. Without opening a file you can:

-save your clipboard to predefined file
-add a comment to same line
-add a new line of a text
-show your saved file. 

## Functions 
```
help - display this little help
show - show your saved notes 
c - adding comment 
clip - write clip to the file 
d 1 - delete one line
```
## Examples
```
qnote help - show help
qnote show - cat text from you saved $dir
qnote c "This is a comment" - add a comment to the file on the same line
qnote clip - Save a clipboard to the file
qnote d 1 - delete last 1 line form a file 
qnote d 3 - delete last 3 lines from a file
```
## Installation

You need to have installed xsel

on ubuntu:
```
sudo apt-get install xsel
```
on arch, manjaro:
```
sudo pacman -S xsel
```
in your .bashrc or bashrc_profile located in your home directory add this lines:

function qnote {
bash /full/path/to/qnote.sh $1 $2 $3
}

the path to the file where all clipboards will be stored is in variable dir.
You can find variable dir on 9 line in the script. 

## Setup a dir to your note

In qnote.sh setup dir variable to your full path where you want to save your file with storred comments and clipboards.
