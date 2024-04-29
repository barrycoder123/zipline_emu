import os, re
import fileinput

'''
TODO: 
    if filename ends in .inbound or .outbound remove the first 7 lines
    1. get all files in the dir --> listdir
    2. get files that end in .inbound and .outbound
    3. open files if line contains comment '#' char delete
    ** this is the same as the sed unix command: sed '/^#/d' this finds all
    lines that starts with # and deletes
'''
my_dir = "." # curr directory
my_dir_items = os.listdir(my_dir)
ib_ob_files = []

for f in my_dir_items:
    if ".inbound" in f or ".outbound" in f:
        ib_ob_files.append(f)

for item in ib_ob_files:
    for line in fileinput.input(item, inplace = True):
        if not re.search('#', line):
            print line,

