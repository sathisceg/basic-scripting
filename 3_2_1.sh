lastline=`awk 'END{print NR}' imdb-top-250.txt`


awk -v vlastline="$lastline" -F" " ' BEGIN{ count=1; printf("[") > "imdb-top-250.json" }{ { b=""; for(i=2;i<NF-1;i++){b=b" "$i;} 
	if(count != (vlastline))
  	printf(" { \"ID\" : \"%s\", \"Name\": \"%s\", \"Year\" : \"%s\", \"Rating\":\"%s\" },\n",$1,b,$(NF-1),$NF) > "imdb-top-250.json"  }  
  	count++;
  } END{    printf(" { \"ID\" : \"%s\", \"Name\": \"%s\", \"Year\" : \"%s\", \"Rating\":\"%s\" }]",$1,b,$(NF-1),$NF) > "imdb-top-250.json"     }' imdb-top-250.txt
