#!/usr/bin/python
## get subprocess module
import subprocess

## call date command ##
p = subprocess.Popen("pmset -g ps", stdout=subprocess.PIPE, shell=True)

## Talk with date command i.e. read data from stdout and stderr. Store this info in tuple ##
## Interact with process: Send data to stdin. Read data from stdout and stderr, until end-of-file is reached.  ##
## Wait for process to terminate. The optional input argument should be a string to be sent to the child process, ##
## or None, if no data should be sent to the child.
(output, err) = p.communicate()

## Wait for date to terminate. Get return returncode ##
p_status = p.wait()

i = 0
curbat = ""
for letter in str(output):
    if(letter == "%"):
        break
    i += 1

if(str(output)[i - 2] in ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]):
    curbat += str(output)[i - 2]
curbat += str(output)[i - 1]
curbat = int(curbat)

if(not("discharging" in str(output))):
    style = " style='color: rgb(252, 252, 252) !important;'>"
else:
    style = ">"

if(curbat <= 5):
    print("<i class='fas fa-battery-empty'" + style + "</i>")
elif(curbat <= 25):
    print("<i class='fas fa-battery-quarter'" + style + "</i>")
elif(curbat <= 50):
    print("<i class='fas fa-battery-half'" + style + "</i>")
elif(curbat <= 75):
    print("<i class='fas fa-battery-three-quarters'" + style + "</i>")
elif(curbat >= 90):
    print("<i class='fas fa-battery-full'" + style + "</i>")
