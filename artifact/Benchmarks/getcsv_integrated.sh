#!/bin/bash
sed -n 's_Comm\(.*\)--explicit-drn\(.*\)CaseStudies/__p' output/$1 > temp.txt
sed -n 's_\.drn\(.*\)__p' temp.txt >> $2 
sed -n 's_Comm\(.*\)--prism ../../../CaseStudies/__p' output/$1 > temp.txt
sed -n 's_\.pm\(.*\)__p' temp.txt >> $2 
echo -e ";" >> $2
sed -n 's_States:__p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Transitions:__p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Time for model checking:__p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Total number of plaCalls:__p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Total number of plaCalls for bounds for monotonicity checking:__p' output/$1 >> $2
echo -e ";" >> $2
sed -n '/exitcode:\(.*\)/p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Result at initial state: \(.*\) ( approx.__p' output/$1 > temp.txt
sed -n 's_) at \[\(.*\)\]\.__p' temp.txt >> $2
echo -e ";" >> $2
sed -n 's_Number of monotone parameters: __p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Number of definitely not monotone parameters: __p' output/$1 >> $2
echo -e ";" >> $2
sed -n 's_Number of possible monotone parameters: __p' output/$1 >> $2
echo -e ";" >> $2
echo "q" >>$2 
rm -rf temp.txt
rm -rf temp2.txt   