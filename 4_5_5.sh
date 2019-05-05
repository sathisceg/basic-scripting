#!/bin/bash















# if [ $1 -le 20 ]  	    # same as: while test $i -le 20
# then
#   echo $1  			  # also printf
#   #i=$(($i+1))
#   bash copy.sh $(($1+1))                     # same as   i=`expr $i + 1` or let i+=1 
# fi 



# t=$(readlink  -f "$1")

# echo "t:" $t

# list=$(dirname "$t")

# echo "list:" $list


# read n

# for file in "$list"/*
# 	do
		

#  		if [ -d "$file" ]
# 		 then
# 		 	echo "calling again"

# 		 	echo "dir:" "$file"

# 		 	#temp=$(readlink  -f "$1/$file")
		 	
# 		 	echo "/$file"
		 	
# 		 	read n
# 		 	#bash copy.sh "$file"	
#   		else
#   			echo "file:" "$file"
#   		fi	
# done


inputfile=$(readlink  -m "$1")

outputfile=$(readlink  -m "$2")

# echo "inputfile :" $inputfile

# echo "outputfile :" $outputfile

# echo

# list=$(dirname "$inputfile")

# echo "listoffile :" $list
if [ ! -d "$inputfile" ]
	then
	 echo "sorry!! source folder in not present"
	 exit
fi

if [ ! -d "$outputfile" ]
	then
	 mkdir  "$outputfile"
fi


#read n

#echo 

for file in "$inputfile"/*
	do
 		if [ -d "$file" ]
		 then
		 	 # echo "directory:"
		 	 # echo $file

		 	 #read n

		 	dname="$file"

			dname=${dname##*/} 

			#echo "dname:" $dname

  			#echo "dname 2"  "$outputfile/$dname"


  			bash 4_5_5.sh "$file" "$outputfile/$dname"
  		else
  			#echo "file 1:" "$file"

  			name="$file"

			name=${name##*/} 

			#echo "name:" $name

  			#echo "file 2"  "$outputfile/$name"

  			#read n


  			cp "$file" "$outputfile/$name"
  		fi	
done









