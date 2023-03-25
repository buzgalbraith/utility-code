#!/bin/sh
## clears latex files created from home
## example call: bash clear_latex.bash /home/buzgalbraith/school/spring_2023/big-data-spring-2023/lecture-notes/week_7 notes (done or total)  (doone delletes the file which keeps everyhting in sync, total delletes everyhting invldue the pdf)
echo "path to file" $1; 
echo "file name" $2; 
cd $1/;
rm -r $1/$2.aux
rm -r $1/$2.fdb_latexmk 
rm -r $1/$2.fls
rm -r $1/$2.dvi
rm -r $1/$2.log
rm -r $1/$2.out
done="$3"
if [ "total" == "$done" ] ;
then 
## this is the file that keeps everyhting in sync. 
rm -r $1/$2.synctex.gz
rm -r $1/$2.pdf
fi


if [ "done" == "$done" ] ;
then 
## this is the file that keeps everyhting in sync. 
rm -r $1/$2.synctex.gz
fi
bash clear_latex.bash /home/buzgalbraith/work/school/spring_2023/Machine_Learning_spring_2023/homework/homework_4/ hw4 done
