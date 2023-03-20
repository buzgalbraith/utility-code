import sys
import re 
import os 
import fileinput
## excpetion handeling. 
try:
    repo_path, file_name, file_directory, local= sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4] 
except:
    raise Exception("must inlude repo_path, file_name, file_directory and local arguments") 
if(local!="local" and local!="overleaf"):
    raise Exception("must specify if is local or on overleaf") 


# read the .tex file, and modify the lines
with fileinput.input(file_directory+file_name+"-"+local+".tex", inplace=True) as f :
    for line in f:
        if('\\includegraphics' in line):
                if(local=="local"):
                    pattern=r'{.*}'
                    match=re.search(pattern, line)
                    old_string=match.group()[1:-1]
                    print(re.sub(pattern=pattern,string=line, repl="{"+repo_path+"/"+match.group()[1:-1]+"}"), end="")
                else:
                    pattern=r'{.*}'
                    match=re.search(pattern, line)
                    old_string=match.group()[1:-1] 
                    old_string=old_string.replace(repo_path ,"")
                    edit_line=print(re.sub(pattern=pattern,string=line, repl="{"+old_string[1:]+"}"), end="")
        else:
            print(line, end="")