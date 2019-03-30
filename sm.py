#!/usr/bin/python3
import subprocess
from os import listdir

def getIndex(files):  
    # display choices
    for x in range(0, len(files)):
        print("{x}) {f}".format(x=x, f=files[x]))
    
    return input("Index: ")

    subprocess.call(path, shell=True)

def main():
    scriptsPath = "/home/justin/.scripts"
    files = listdir(scriptsPath)
    index = int(getIndex(files))
    args = input("Args: ")
    scriptPath = "{scriptsPath}/{fileName}".format(scriptsPath=scriptsPath, fileName=files[index])
    subprocess.check_call(scriptPath + " %s" % (args) , shell=True)

if __name__ == "__main__":
   main()
