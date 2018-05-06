#!/bin/bash

#### tri a bule ########

printnumbers(){
                    echo ${ARRAY[*]}

             }
             exchange(){
                    temp=${ARRAY[$1]}

                    ARRAY[$1]=${ARRAY[$2]}

                    ARRAY[$2]=$temp

             }

             sortnumbers(){
                    for (( last=count-1;last>0;last--))
                    do
                       for((i=0;i<last;i++))
                       do
                          j=$((i+1))
                          if [ ${ARRAY[i]} -gt ${ARRAY[j]} ]
                          then
                                exchange $i $j
                          fi
                       done
                    done
             }

             echo "Enter Numbers to be Sorted"
             read -a ARRAY
                         
             start=$(date +%s.%N)
             count=${#ARRAY[@]}

             sortnumbers

             echo "Numbers After Sort: "

             printnumbers

             end=$(date +%s.%N)
             difftimelps=$(echo "$end - $start" | bc )
             printf "Execution time : %.8f sec \n " $difftimelps


             




####### tri par selection ####


printnumbers(){
                    echo ${ARRAY[*]}
             }
             swap(){
                    temp=${ARRAY[$1]}
                    ARRAY[$1]=${ARRAY[$2]}
                    ARRAY[$2]=$temp
             }
             sortnumbers(){
                    for ((i=0;i<count;i++))
                    do
                       min=$i
                       for ((j=i+1;j<count;j++))
                       do
                          if [ ${ARRAY[j]} -lt ${ARRAY[min]} ]
                          then
                                min=$j
                          fi
                       done
                       swap $i $min
                    done
             }
            
             
             start=$(date +%s.%N)
             count=${#ARRAY[@]}

         

             sortnumbers

             echo "Numbers After Sort: "

             printnumbers

             end=$(date +%s.%N)
             difftimelps=$(echo "$end - $start" | bc )
             printf "Execution time : %.8f sec \n " $difftimelps
            
            
##### tri par insertion ####
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
           
            start=$(date +%s.%N)
            count=${#ARRAY[@]}

         

            sortnumbers

            echo "Numbers After Sort: "

            printnumbers
              
            end=$(date +%s.%N)
            difftimelps=$(echo "$end - $start" | bc )
            printf "Execution time : %.8f sec \n " $difftimelps
            
######## tri rapide ########
printnumbers(){
                  echo ${ARRAY[*]}
             }
             sortnumbers(){
                  local array=(`echo "$@"`)
                  local -a l
                  local -a g
                  local -a e
                  local x= 
                  if [ ${#array[@]} -lt 2 ]; then
                        echo -n ${array[@]}
                  else
                        local pivot=${array[0]}
                        for x in ${array[@]} 
                        do 
                           if [ $x -lt $pivot ]
                           then
                                 l=( ${l[@]} $x )
                           elif [ $x -gt $pivot ]
                           then 
                                 g=( ${g[@]} $x )
                           else 
                                 e=(${e[@]} $x )
                           fi
                        done
                        echo "`sortnumbers "${l[@]}" ` ${e[@]} ` sortnumbers "${g[@]}" ` "

                  fi
             }           
             clear
             echo "Enter Numbers to be sorted : "
             read -a ARRAY 
             start=$(date +%s.%N)
             count=${#ARRAY[@]}
             echo "Numbers Before Sort : "
             printnumbers
             echo "Numbers After Sort :"
             sortnumbers "${ARRAY[@]}"
<<<<<<< HEAD
>>>>>>> a8540e4d5de90f0a194b00eee04fe70225242b96
=======
             end=$(date +%s.%N)
             difftimelps=$(echo "$end - $start" | bc )
             printf "Execution time : %.8f sec \n " $difftimelps
             
###### tri fusion ##########
>>>>>>> 43c26fb79397a0eb3b2e39ffd865912831dccd7c

echo "Enter number of terms :"
             read n
             for ((i=0;i<n;i++))
             do 
                echo "Enter 1st array $i data: " 
                read a[$i]
             done 
             for((i=0;i<n;i++))
             do 
                echo "Enter 2nd array $i data:"
                read b[$i]
             done 
             echo "Merge sort"
             j=0
             k=0
             i=0
             let num=n+n
             start=$(date +%s.%N)
             for((x=0;x<num;x++))
             do 
                if [ ${a[$j]} -le ${b[$k]} ]
                then 
                      c[$i]=${a[$j]} 
                      i=$(expr $i + 1)
                      j=$(expr $j + 1)
                else 
                      c[$i]=${b[$k]}
                      i=$(expr $i + 1)
                      k=$(expr $k + 1)
                fi 
                if [ $j -eq $n -o $k -eq $n ]
                then 
                      break 
                fi
             done 
             for((;j<n;))
             do 
                c[$i]=${a[$j]}
                i=$(expr $i + 1)
                j=$(expr $j + 1)
             done 
             for ((;k<n;))
             do
                c[$i]=${b[$k]}
                i=$(expr $i + 1)
                k=$(expr $k + 1)
             done 
             echo "Sorrted number:"
             for ((i=0;i<10;i++))
             do
                echo ${c[$i]}
             done 
             end=$(date +%s.%N)
             difftimelps=$(echo "$end - $start" | bc )
             printf "Execution time : %.8f sec \n " $difftimelps
             





















