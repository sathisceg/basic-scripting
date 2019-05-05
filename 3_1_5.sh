#5


  echo "***Grade Report for the ABC course***"

  echo


   awk -F" " 'BEGIN { totalmarks=0;totalstudents=0;c=0;min=101;max=0; } { if(NR>1) {   

 			
 				totalmarks=totalmarks+($3+$4+$5);
 				name[$1]=$1;
 				marks[$1]=($3+$4+$5);
 				totalstudents++;
 				
 				c++;


 				if(max<($3+$4+$5))
 				{
 					max=($3+$4+$5);
 				}

 				if(min>($3+$4+$5))
 				{
 					min=($3+$4+$5);
 				}

 			
  } } END { 


  		avg=totalmarks/totalstudents;


  		
  		for(i in marks)
  		{

  			if(marks[i]>=95 && marks[i]<100)
  			{
  				 printf("%5s         A\n",name[i]);
  			}

  			if(marks[i]>=90 && marks[i]<95)
  			{
  				 printf("%5s         A-\n",name[i]);
  			}

  			if(marks[i]>=85 && marks[i]<90)
  			{
  				 printf("%5s         B\n",name[i]);
  			}
  			
  			if(marks[i]>=80 && marks[i]<85)
  			{
  				 printf("%5s         B-\n",name[i]);
  			}


  			if(marks[i]>=75 && marks[i]<80)
  			{
  				 printf("%5s         C\n",name[i]);
  			}

  			if(marks[i]>=70 && marks[i]<75)
  			{
  				 printf("%5s         C-\n",name[i]);
  			}

  			if(marks[i]>=60 && marks[i]<70)
  			{
  				 printf("%5s         D\n",name[i]);
  			}

  			if(marks[i]<60)
  			{
  				 printf("%5s         F\n",name[i]);
  			}
  		   
  		}

  		printf("\n");
  		printf("Total Number Of Students %d\n\n",totalstudents);
  		printf("Highest Mark %14d\n\n",max);
  		printf("Lowest Mark  %14d\n\n",min);
  		printf("Average Mark %14d\n\n",avg);




   }' marks.txt


echo "*** End of Grade Report***"
