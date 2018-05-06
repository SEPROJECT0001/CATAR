#!/bin/bash

out=y

while [ $out == "y" -o $out == "Y" ]
do 

echo "+=========[ Menu ]==========+"
echo "| 1. Tri                    |" 
echo "| 2. Recherche              |"
echo "|---------------------------|"
echo "| 0. Quitter                |"
echo "+===========================+"

read -p "Tapez votre choix : " CHTR

if [ $CHTR -eq 1 ]; then  

#Tri a bulle

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
       echo " ========================[ Tri a bule ]========================"             
             
       start=$(date +%s.%N)
       count=${#ARRAY[@]}        

       sortnumbers

       echo "Numbers After Sort: "

       printnumbers

       end=$(date +%s.%N)
       difftimelps=$(echo "$end - $start" | bc )
       echo "--------------------------------------------------------------"
       printf "Execution time : %.8f sec \n " $difftimelps

       echo -e "\n"
       
#Tri par selection

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
        echo "===================[ Tri par selection ]======================"
             
        start=$(date +%s.%N)
        count=${#ARRAY[@]} 

        sortnumbers

        echo "Numbers After Sort: "
       
        printnumbers

        end=$(date +%s.%N)
        difftimelps=$(echo "$end - $start" | bc )
        echo "--------------------------------------------------------------"
        printf "Execution time : %.8f sec \n " $difftimelps

        echo -e "\n"

# Tri par insertion

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
         echo "===================[ Tri par insertion ]======================"
           
         start=$(date +%s.%N)
         count=${#ARRAY[@]}   

         sortnumbers

         echo "Numbers After Sort: "

         printnumbers
              
         end=$(date +%s.%N)
         difftimelps=$(echo "$end - $start" | bc )
         echo "--------------------------------------------------------------"
         printf "Execution time : %.8f sec \n " $difftimelps

         echo -e "\n"

# Tri rapide

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

          echo "=======================[ Tri rapide ]========================="            
           
             
          start=$(date +%s.%N)
          count=${#ARRAY[@]}
        
          echo "Numbers After Sort :"
          sortnumbers "${ARRAY[@]}"
          end=$(date +%s.%N)
          difftimelps=$(echo "$end - $start" | bc )
          echo "--------------------------------------------------------------"
          printf "Execution time : %.8f sec \n " $difftimelps
          echo "=============================================================="
            
