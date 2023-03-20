#!/bin/sh
echo "repo path: $1";
echo "file name" $2 
echo "file directory: $3";
echo "local or overleaf" $4;
current_directory="$(pwd)"
cd $3;
cp $3$2.tex $3$2-$4.tex;
echo $3;
python $current_directory/latex_convert.py $1 $2 $3 $4;
echo "check this" $3$2-$4.tex

pdflatex $3$2$4.tex
# bash latex_convert.bash /home/buzgalbraith/work/school/spring_2023/probaility-theroy-2  notes /home/buzgalbraith/work/school/spring_2023/probaility-theroy-2/notes/week_3/Video_1:RANDOM-SAMPLING-AND-ESTIMATION-BIAS\ local

## so far we have coppied the file. 
## now we need a python script 