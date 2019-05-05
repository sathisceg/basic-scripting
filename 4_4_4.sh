# printdir()
# {

#   for file in "$listfile/"*
#   do
#     # read n

#     if [ -d "$file" ]
#      then

#       tput setaf 2
#       echo
#       echo $file


#       listfile=$file

#         printdir $listfile
#       else

#         tput setaf 7
#         fname="$file"

#       fname=${fname##*/} 

#       #echo "dname:" $name

#         echo  "$fname"

#         #echo ${file[${#file}-2]}
#       fi  
#   done




# }






# #echo $1


# for i in "$@"
# do
   
#   # echo $i
#    listfile=$i
#    #read n
#    tput setaf 2
#    echo $listfile
#    #read n
#    printdir $listfile

# done



# # list=$(dirname "$1")
# # echo "list :" $list
# # read n
# # printdir $1










# list=$(dirname "$0")

# for file in "$list/"*
# do
#   [[ -d "$file" ]] && echo "$file is a directory"
#   [[ -f "$file" ]] && echo "$file is a regular file"
# done



# list=$(dirname "$0")

# for file in "$list/"*
# do
#   if [ -d "$file" ]
#   then
#     for file1 in "$file"/*
#     do
#       echo
#       echo "$file1 "
#     done
#   fi  

#   [[ -f "$file" ]] && echo "$file is a regular file"
# done



# fact()
# {
#   if [ $1 -eq 1 ]
#   then  
#     echo 1
#   else
#     echo $(($1 * $(fact $(($1-1)))))
#   fi
# }

# number=5

# fact $number




# printnum()
# {
#   if [ $1 -eq 0 ]
#   then 
#     echo $1
#   else
#     echo $1
#     printnum $(($1-1))
#   fi  
# }


# number=5

# printnum $number


printdir()
{

  for file in "$listfile/"*
  do
    # read n

    if [ -d "$file" ]
     then

      tput setaf 2
      echo
      echo $file


      listfile=$file

        printdir $listfile
      else

        tput setaf 7
        fname="$file"

      fname=${fname##*/} 

      #echo "dname:" $name

        echo  "$fname"

        #echo ${file[${#file}-2]}
      fi  
  done




}



#echo "1" $1

if [ -z $1 ]
  then 
  
  listfile=$(dirname "$0")

  printdir $listfile

else

  for i in "$@"
  do
   
  # echo $i
   listfile=$i
   #read n   
   if [ -d "$listfile" ]
   then
       tput setaf 2
       echo $listfile
       printdir $listfile
   else
      tput setaf 1
      echo "Sorry!! invlaid directory"
   fi 
  
   #read n
   
done

fi



# for i in "$@"
# do
   
#   # echo $i
#    listfile=$i
#    #read n   
#    if [ -d "$listfile" ]
#    then
#        tput setaf 2
#        echo $listfile
#        printdir $listfile
#    else
#       tput setaf 1
#       echo "Sorry!! invlaid directory"
#    fi 
  
#    #read n
   

# done



# list=$(dirname "$1")
# echo "list :" $list
# read n
# printdir $1