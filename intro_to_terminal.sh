#hello everyone. we're going to learn to use the command line interface with this quick tutorial.
#we won't learn everything, just what you need to get started.
#if you have questions or want to know more later, just ask.

#these instructions are designed for unix users (mac and linux) if you are using windows, and a command doesn't work, ask for our help

#you just learned how to connect to the servers. now I'm going to explain how you use the terminal window to interact with the remote machine.

#########################
#making a data directory#
#########################
#this command will make a directory called data in your current directory
mkdir test

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
mkdir test/sub_dir
touch test/sub_dir/my_file.txt
tree #now what do you see?

######################
#changing directories#
######################
cd test

#########################
#what directory am i in?#
#########################
#the shell should actually show you this in the prompt, but it's always useful to know how to do this if you are using a shell where it doesn't show you your current path
pwd

####################################
#more directory space visualization#
####################################
tree ../
cd sub_dir
ls -lha
pwd
tree ../../
tree ./

######################################
#making visualizing and editing files#
######################################
touch test_file.txt
#moving a file (mv sourcefile destination/folder/name_you_want)
mv test.txt test_2.txt #move as rename
mv test_2.txt ../ #moving without rename to directory above
mv /data/morien/test/test_2.txt /data/morien/test/sub_dir/test_2.txt #moving with absolute paths
mv test_2.txt test.txt #move back to original file name

nano test.txt
#nano is a very simple text editor. to save a file hold control and press "o", then type the name of the file to save (if you need to change it)
#to exit the nano editor, hold control plus "x"
#these and other instructions are outlined at the bottom of the screen when you are using the nano editor

#other common editors are vi, pico, emacs. feel free to use these if you are more familiar with them.

######
#grep#
######
#cat command dumps the file contents to screen, the | character (called pipe) captures that output and passes it to the next command (in this case it is grep)
#grep searches for a pattern. in this example the pattern is "string". grep will return any lines in test.txt containing the characters s t r i n and g, in that order only
grep "string" test.txt


##########################
#displaying file contents#
##########################
#display a file's contents in the current screen
cat test.txt

#display a file's contents on a separate screen
less test.txt
#'less' is another command for viewing files, not editing
#it's more useful than 'cat' because you can use the arrow keys to move line by line through the file
#to exit the less view of a file, type 'q'

######
#pipe#
######
grep "string" test.txt | less

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

#view a file on its own
less dirname/filename.txt

#use grep to look for matching lines in a file
grep "phrase" filename.txt

#use grep to dump matching lines from one file into a new file
grep "phrase" filename.txt > newfile.txt

################
#removing files#
################
rm newfile.txt

#remove a file in a different directory
rm dirname/filename.txt

#remove a directory (ONLY IF IT IS EMPTY)
rm -d dirname

#################
#using 'screens'#
#################
#some commands take a long time to run. if your connection to the remote machine dies, so does the job.
#screen creates a new terminal window that runs inside the remote machine
#you can attach and detatch to existing screens, and leave them running while you are logged off the machine
#run something in your screen. any command that has output on screen is fine. ls -lha, for example
#type 'screen' and hit enter

screen

#detatching from the screen (going back to your original terminal window)
#hit 'ctrl-a', then after that, 'd'
#you left the screen you just created

#reconnecting to a screen
screen -d -r name_of_screen #this command will reconnect you
