#!/bin/bash


read n

for((i=0;i<n;i++))
do
	read temp
	arr[i]=$temp
done

for((i=1;i<n;i++))
do
	for((j=i;j>0;j--))
	do
		if ((arr[j-1]>arr[j]))
			then				
				((t=arr[j-1]))
				((arr[j-1]=arr[j]))
				((arr[j]=t))
				
		fi
	done		
done


echo ${arr[@]}


