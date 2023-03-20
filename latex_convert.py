import sys
import re 
repo_path, file_name, file_directory, local= sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4] 
texdoc = []  # a list of string representing the latex document in python

# read the .tex file, and modify the lines
with open(file_directory+file_name) as fin:
    for line in fin:
        if('\\includegraphics' in line):
            pattern=r'{.*}'
            match=re.search(pattern, line)
            print(match.group()[1:-1])
