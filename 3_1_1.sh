
#a
echo "a"
echo

awk -F" " '{ printf("%-10s %-10s %-10s\n" ,$1,$2,$5) }' marks.txt 

#b
echo
echo "b"
echo

awk -F" " '{ 

if(NR<5){printf("%d %-10s %-10s %-10s\n",NR,$1,$2,$5)}}' marks.txt

#c
echo 
echo "c"
echo 

awk 'END { print }' marks.txt 