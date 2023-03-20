#!/bin/sh
## changes the file path of latex documents from overleafs file system to my local one and vice versa and compiles the latex to overlaf
## if there are error messages compiling just click enter a few times and it should be fine
## required argumnets (path to git repository), (name of tex), (directory where file is stored), (if it is being converted to the local file system of vice vera)
## example call:  bash latex_convert.bash /home/buzgalbraith/work/school/spring_2023/probaility-theroy-2-2023 hw3 /home/buzgalbraith/work/school/spring_2023/probaility-theroy-2-2023/homework/homework_3 local
echo "repo path: $1";
echo "file name" $2 
echo "file directory: $3";
echo "local or overleaf" $4;
current_directory="$(pwd)"  
cd $3/;
cp $3/$2.tex $3/$2-$4.tex;
# echo $3;
python $current_directory/latex_convert.py $1 $2 $3/ $4;
local="$4"
if [ "local" == "$local" ] ;
then 
    pdflatex $3/$2-$4.tex 
    rm -r $2-$4.aux
    rm -r $2-$4.fdb_latexmk 
    rm -r $2-$4.fls
    rm -r $2-$4.log
    rm -r $2-$4.out
fi


#bash latex_convert.bash /home/buzgalbraith/school/spring_2023/probaility-theroy-2 hw3 /home/buzgalbraith/school/spring_2023/probaility-theroy-2/homework/homework_3 local
