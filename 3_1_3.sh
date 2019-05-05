

awk -F" " '{ if(NR>1) { printf("%-10s %-10s \n",$1,$3+$4+$5) } } ' marks.txt