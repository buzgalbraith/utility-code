#!/bin/sh
## clears latex files created from home
## example call: bash clear_latex.bash /home/buzgalbraith/school/spring_2023/big-data-spring-2023/lecture-notes/week_7 notes
echo "path to file" $1; 
echo "file name" $2; 
cd $1/;
rm -r $1/$2.aux
rm -r $1/$2.fdb_latexmk 
rm -r $1/$2.fls
rm -r $1/$2.dvi
rm -r $1/$2.synctex.gz
rm -r $1/$2.log
rm -r $1/$2.out

