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






















