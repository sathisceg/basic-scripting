#4 a

echo "a) Topper"
echo

 awk -F" " 'BEGIN { max=0;name=""; } { if(NR>1) {   

 			if(max<($3+$4+$5))
 			{
 				max=($3+$4+$5);
 				name=$1;
 			}

  } } END { printf("%s\n",name) }' marks.txt

 
#b
echo
echo "b) Above Average"
echo

  awk -F" " 'BEGIN { totalmarks=0;totalstudents=0;c=0; } { if(NR>1) {   

 			
 				totalmarks=totalmarks+($3+$4+$5);
 				name[$1]=$1;
 				marks[$1]=($3+$4+$5);
 				totalstudents++;
 				c++;

 			
  } } END { avg=totalmarks/totalstudents;


  		
  		for(i in marks)
  		{

  			
  			if(marks[i]>=avg)
  			{
  				 printf("%s\n",name[i]);
  			}
  		
  		   
  		}


   }' marks.txt