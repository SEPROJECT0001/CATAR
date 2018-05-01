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
             

























