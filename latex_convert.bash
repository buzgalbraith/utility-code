#!/bin/sh
echo "repo path: $1";
echo "file name" $2 
echo "file directory: $3";
echo "local or overleaf" $4;
cd $3;
cp $3$2 $3$2-$4;
echo $3;
ls;
# bash latex_convert.bash /home/buzgalbraith/school/spring_2023/probaility-theroy-2  notes.tex /home/buzgalbraith/school/spring_2023/probaility-theroy-2/notes/week_1/ overleaf