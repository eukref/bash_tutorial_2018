#hello everyone. we're going to learn to use the command line interface with this quick tutorial.
#we wont' learn everything, just what you need to get started.
#if you have questions or want to know more later, just ask.

#these instructions are designed for unix users (mac and linux) if you are using windows, and a command doesn't work, ask for our help

#Martin just showed you how to connect to the servers. now I'm going to explain how you use the terminal window to interact with the remote machine.

#########################
#making a data directory#
#########################
#this command will make a directory called data in your current directory
mkdir data
#if your current directory is your home directory (/home/username/), then this command wil do the same:
mkdir /home/username/data

###############################
#looking at directory contents#
###############################
#plain list with no details
ls
#list with details
ls -l
#list with human readable details
ls -lh
#list with human readable details and 'hidden' files
ls -lha

#########################
#visualizing directories#
#########################
pwd #this command tells you the path to your current directory
tree #this command will show you the directory structure of the current directory you are in, plus subdirectories and files
#type 'tree' and hit enter
mkdir data/test
tree #now what do you see?

######################
#changing directories#
######################
cd data
pwd
tree ../
cd test
pwd
tree ../../

######################################
#making visualizing and editing files#
######################################
touch test.txt
#moving a file (mv sourcefile destination/folder/name_you_want)
mv test.txt test/test.txt
#nano is a simple text editor. to save a file hold control and press "o", then type the name of the file to save (if you need to change it)
#to exit the nano editor, hold control plus "x"
#these and other instructions are outlined at the bottom of the screen when you are using the nano editor
nano test/test.txt
#other common editors are vi, pico, emacs

######
#grep#
######
#cat command dumps the file contents to screen, the | character (called pipe) captures that output and passes it to the next command (in this case it is grep)
#grep searches for a pattern. in this example the pattern is "string". grep will return any lines in test.txt containing the characters s t r i n and g, in that order only
cat test.txt | grep "string"

#quick review of what we learned so far:
#make a directory
mkdir dirname
#make an empty file
touch filename.txt
#move a file to a new location
mv filename.txt dirname/
#edit a file
nano dirname/filename.txt
#show a file's contents on screen
cat dirname/filename.txt
#use grep to look for matching lines in a file
cat dirname/filename.txt | grep "phrase" > newfile.txt
#remove a file
rm newfile.txt
#remove a file in a different directory
rm dirname/filename.txt
#remove a directory (only if it's empty)
rm -d dirname

#'less' is another command for viewing files, not editing
#it's more useful than 'cat' because you can use the arrow keys to move line by line through the file
#to exit the less view of a file, type 'q'
less testfile.txt

#################
#using 'screens'#
#################
screen
#type 'screen' and hit enter
#some commands take a long time to run. if your connection to the remote machine dies, so does the job.
#screen creates a new terminal window that runs inside the remote machine
#you can attach and detatch to existing screens, and leave them running while you are logged off the machine
#run something in your screen. any command that has output on screen is fine. ls -lha, for example
#hit 'ctrl-a', then 'd'
#you left the screen you just created
screen -d -r
