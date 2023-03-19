 #!/bin/sh
# This is a comment!
echo "repo path: $1";
echo "file name" $2 
echo "file directory: $3";
echo "local or overleaf" $4;
cd $3;
cp $3$2 $3$2-$4;
echo $3;
ls;
#/home/buzgalbraith/school/spring_2023/probaility-theroy-2
#/home/buzgalbraith/school/spring_2023/probaility-theroy-2/notes/week_1/notes.tex