import os, re
import fileinput

'''
TODO: 
    if filename ends in .inbound or .outbound remove the first 7 lines
    1. get all files in the dir --> listdir
    2. get files that end in .inbound and .outbound
    3. open files if line contains comment '#' char delete
'''
my_dir = "." # curr directory
my_dir_items = os.listdir(my_dir)
print(my_dir_items)
ib_ob_files = []

for f in my_dir_items:
    if ".inbound" in f or ".outbound" in f:
        ib_ob_files.append(f)

print(ib_ob_files)

for item in ib_ob_files:
    for line in fileinput.input(item, inplace = True):
        if not re.search('#', line):
            print line,

