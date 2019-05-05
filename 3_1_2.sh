

awk '{ if($2=="M") { printf(" %-10s %-10s %-10s\n",$1,$2,$5) > "males.txt" }  else if($2=="F") { printf(" %-10s %-10s %-10s\n",$1,$2,$5) > "female.txt" } }' marks.txt 
