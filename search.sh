#!/bin/bash

#### recherche lineaire ####

 lsearch(){
                   status=-1
                   for((i=0;i<count;i++))
                   do
                      Temp=$1
                      if [ $Temp -eq ${ARRAY[i]} ]
                      then
                            status=0
                            searches=$((i+1))
                            return
                      fi
                   done
             }

             clear 

             echo "Enter Array Elements : "

             read -a ARRAY

             count=${#ARRAY[@]}

             search=y

             while [ "$search" == "y" -o "$search" == "Y" ]
             do
                echo -n "Enter element to be searched : "
                read num
                lsearch $num
                if [ $status -eq 0 ]
                then
                      echo "$num found after $searches searches"
                else
                      echo "$num not found"
                fi
                echo -n "Do you want another search (y/n): "
                read search
             done

##### recherche binaire ##########
echo "recherche binaire"
             printnumbers(){
                   echo ${ARRAY[*]}
             }

             sortnumbers(){
                   for((i=1;i<count;i++))
                   do
                      Temp=${ARRAY[i]}
                      j=$((i-1))
                      while [ $Temp -lt ${ARRAY[j]} ]
                      do
                         ARRAY[j+1]=${ARRAY[j]}
                         let j--
                         if [ $j == -1 ]
                         then
                               break
                         fi
                      done
                      ARRAY[j+1]=$Temp
                   done
             }

             binarysearch(){
                   status=-1
                   i=1
                   array=($(echo "$@"))
                   LowIndex=0
                   HeighIndex=$((${#array[@]}-1))

                   while [ $LowIndex -le $HeighIndex ]
                   do
                      MidIndex=$(($LowIndex+($HeighIndex-$LowIndex)/2))
                      MidElement=${array[$MidIndex]}

                      if [ $MidElement -eq $SearchedItem ]
                      then
                            status=0
                            searches=$i
                            return
                      elif [ $SearchedItem -lt $MidElement ]
                      then
                            HeighIndex=$(($MidIndex-1))
                      else
                            LowIndex=$(($MidIndex+1))
                      fi

                      let i++

                   done
             }

             clear

             echo "Enter Array Elements : "
             read -a ARRAY
             count=${#ARRAY[@]}
             search=y

             sortnumbers
             echo "Array Elements After Sort: "

             printnumbers

             while [ "$search" == "y" -o "$search" == "Y" ]
             do
                echo -n "Enter Element to be searched : "
                read SearchedItem
                binarysearch "${ARRAY[@]}"
                if [ $status -eq 0 ]
                then
                      echo "$SearchedItem found after $searches searches"
                else
                      echo "$SearchedItem not found in the list"
                fi

                echo -n "Do you want another search (y/n): "
                read search

             done


########## recherche avec grep ###########

echo "grep"
             echo "Enter file name : "
             read fname
             echo "Enter the search pattern : "
             read pattern
             
             if [ -f $fname ]; then
                    result=`grep -i -n "$pattern" $fname`
                    echo $result
             fi

