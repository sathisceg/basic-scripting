




# outtoin() {
       
#         #clear
        
#          width=$(tput cols) 
#          height=$(tput lines)
         
#          tput civis
#          #tput cnorm
         
#        # //  width=30
#        #  // height=30
#           # width=$(($width/2))
#           # height=$(($height/2))
       

#         for((i=width,j=0;i>0;i--,j++))
#         do           
#             if((i%2==0))
#             then
#                tput setaf 2            
#             else
#               tput setaf 5
#             fi

#             for((k=j;k<i;k++))
#             do
#              # sleep 0.02s              
#               tput cup  $j $k
#               echo -e " "
#             done

#             for((k=j;k<i;k++))
#             do
#              # sleep 0.02s
#               tput cup  $k $i
#               echo -e " "
#             done


#             if((i%2==0))
#             then
#                tput setaf 4           
#            else
#               tput setaf 1
#             fi

#             for((k=i;k>j;k--))
#             do
#               #sleep 0.02s
#               tput cup $i $k
#               echo -e " "
#             done

#             for((k=i;k>j;k--))
#             do
#               #sleep 0.02s
#               tput cup  $k $j
#               echo -e " "
#             done

#         done
        
#     }

    
#     trap outtoin WINCH

    
#     while true; do
#        outtoin
#     done

###################################################################################

# outtoin() {
       
#         clear
        
#          width=$(tput cols) 
#          height=$(tput lines)
         
#          tput civis
#          #tput cnorm
         
          
#           mw=$(($width/2))
#           mh=$(($height/2))
       
#           # echo $height
#           #  echo $mh
#           # echo $width
#           # echo $mw
         
#           xtright=$(($mh-1))
#           ytright=$(($mw+1))

#           xtleft=$(($mh-1))
#           ytleft=$(($mw-1))

#           xbleft=$(($mh+1))
#           ybleft=$(($mw-1))

#           xbright=$(($mh+1))
#           ybright=$(($mw+1))




#           i=0
#           j=0


#           while [  $i -lt $mh ] 
#           do
            
#              # sleep 1s
#              k=$xtright          
#              while [ $k -le $xbleft ]
#              do
#                 tput cup $k $ytright
#                 echo -e "*\c"
#                 ((k++))                 
#              done

#              k=$ybright
#              while [ $k -ge $ybleft ]
#              do
#                 tput cup $xbleft $k
#                 echo -e "*\c"
#                 ((k--))                 
#              done


#              k=$xbleft
#              while [ $k -ge $xtleft ]
#              do
#                 tput cup $k $ytleft
#                 echo -e "*\c"
#                 ((k--))                 
#              done

#              k=$ytleft
#              while [ $k -le $ytright ]
#              do
#                 tput cup $xtright $k
#                 echo -e "*\c"
#                 ((k++))                 
#              done



#              # tput cup $xbright  $ybright
#              # echo -e "*\c"


#              # tput cup $xbleft  $ybleft
#              # echo -e "*\c"

#              # tput cup $xtleft  $ytleft
#              # echo -e "*\c"

#               ((xtright--))
#               ((ytright++))

#               ((xbright++))
#               ((ybright++))

#               ((xbleft++))
#               ((ybleft--))
              
#               ((xtleft--))
#               ((ytleft--))

#              ((i++))
#              ((j++))

            

#           done





        
      

           

        
#     }

    
#     trap outtoin WINCH

#     outtoin
#     while true; do
#      :  
#     done
  #########################################################################  



  intoout() {
       
        clear
        
         width=$(tput cols) 
         height=$(tput lines)
         
         tput civis
         #tput cnorm
         
          
          mw=$(($width/2))
          mh=$(($height/2))
       
          # echo $height
          #  echo $mh
          # echo $width
          # echo $mw
         
          xtright=$(($mh-1))
          ytright=$(($mw+1))

          xtleft=$(($mh-1))
          ytleft=$(($mw-1))

          xbleft=$(($mh+1))
          ybleft=$(($mw-1))

          xbright=$(($mh+1))
          ybright=$(($mw+1))




          i=0
          j=0

          if [ $width -gt $height ]
          then  
            screeni=$width
          else
            screeni=$height
          fi

          while [  $i -lt $screeni ] 
          do
                      
            if((i%2==0))
            then
               tput setaf 2            
            else
              tput setaf 5
            fi

             k=$xtright          
             while [ $k -le $xbleft ]
             do
                 # sleep 0.02s
                tput cup $k $ytright
                echo -e "*\c"
                ((k++))                 
             done

             k=$ybright
             while [ $k -ge $ybleft ]
             do
                 # sleep 0.02s
                tput cup $xbleft $k
                echo -e "*\c"
                ((k--))                 
             done


             if((i%2==0))
             then
               tput setaf 4           
              else
              tput setaf 1
            fi

             k=$xbleft
             while [ $k -ge $xtleft ]
             do
                 # sleep 0.02s
                tput cup $k $ytleft
                echo -e "*\c"
                ((k--))                 
             done

             k=$ytleft
             while [ $k -le $ytright ]
             do
                # sleep 0.02s
                tput cup $xtright $k
                echo -e "*\c"
                ((k++))                 
             done
             

              if [ $xtright -gt 0 ]
              then 
                ((xtright--))
              fi

              ((ytright++))

              ((xbright++))
              ((ybright++))

              ((xbleft++))

              if [ $ybleft -gt 0 ]
              then  
                  ((ybleft--))
              fi

             if [ $xtleft -gt 0 ]
             then
                ((xtleft--))
             fi
                


              if [ $ytleft -gt 0 ]
              then  
                  ((ytleft--))
              fi  
              
              ((i++))            
          done        
    }

    
    trap intoout WINCH
    #outtoin
    flag=1

    while true; do
      
      intoout
       # if((flag==1))
       # then
       #     intoout
       #     flag=2            
       # else
       #     outtoin
       #     flag=1
       # fi       
    done