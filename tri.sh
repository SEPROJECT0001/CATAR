#!/bin/bash

#### tri a bule ########

read -p "entrer nombre de lignes : " SIZE
             for (( i=0 ; i<SIZE ; i++ ))
             do
                printf "Saisir un entier : "
                read tab[i]
             done
             echo -e "\n"
             
             for (( i=0 ; i<SIZE ; i++ ))
             do
                for (( j=($i+1) ; j<SIZE ; j++ ))
                do
                    if [ ${tab[j]} -le ${tab[i]} ]
                    then
                         tampon=${tab[i]}
                         tab[i]=${tab[j]}
                         tab[j]=$tampon
                    fi
                done
             done 
             for (( i=0 ; i<SIZE ; i++ ))
             do
                echo ${tab[i]}
             done
             

##### tri par selection ####

echo "Enter the number :"      
             read n
             echo "Enter number in an array :"
             for (( i=0;i<n;i++ ))
             do
                read arr[$i]
             done
             
             for (( i=0;i<n-1;i++ ))
             do
                small=${arr[$i]}
                index=$i
                for (( j=i+1;j<n;j++ ))
                do
                   if (( arr[j]<small ))
                   then
                         small=${arr[$j]}
                         index=$j
                   fi
               done
               temp=${arr[$i]}
               arr[$i]=${arr[$index]}
               arr[$index]=$temp   
            done
 
            echo "Printing sorted array :"
            for (( i=0;i<n;i++ ))   
            do
               echo ${arr[$i]}
            done
            
            
##### tri par insertion ####
echo "Enter the number :"
             read n
             echo "Enter a number in an array :"
             for (( i=0;i<n;i++ ))
             do
                read arr[$i]
             done
   
             for (( i=1;i<n;i++ ))
             do
                j=$i-1
                temp=${arr[$i]}
                while (( j>=0 && arr[j]>temp ))
                do
                   arr[$j+1]=${arr[$j]}
                   j=$j-1
                done
                arr[j+1]=$temp 
             done
             echo "Printing sorted array :"
             for (( i=0;i<n;i++ ))
             do
                echo ${arr[$i]}
             done
            
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
             
             count=${#ARRAY[@]}
             echo "Numbers Before Sort : "
             printnumbers
             echo "Numbers After Sort :"
             sortnumbers "${ARRAY[@]}"
             
###### tri fusion ##########

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

             





















