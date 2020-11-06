#! /bin/bash

#Display
disp()
{
        echo
        read -p "Enter how many times you want to flip the coin/s : " flip
        echo -e "\nSelect one combinations from bellow:----"
        echo -e "1. Singlet \n"
        read -p "You Choosen the Combination : " ch
}

#Singlet
singlet()
{
        H=0     #H --> 0
        T=0     #T --> 1

        # Flip coin & Count values
        for (( i=0; i<$flip; i++ ))
        do
                val=$((RANDOM % 2))

                case $val in
                        0)
                        H=`expr $H + 1`
                        ;;

                        1)
                        T=`expr $T + 1`
                        ;;
                esac
        done

        # Print Values
        echo "H=$H    T=$T"

        #Disclose the Winner and Calculate the Winning Percentage
        winPer=`expr $H + $T`

        if (( $H > $T ))
        then
                echo -e "\nH is Won!"
                winPer=`echo $H $winPer | awk "{print $H / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $T > $H ))
        then
                echo -e "\nT is Won!"
                winPer=`echo $T $winPer | awk "{print $T / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $H == $T ))
        then
                echo -e "\nIt's a Tie!"

        fi
}

#main
main()
{
        disp

        case $ch in
                1)
                echo -e "\nYou are in Singlet Combination \n"
                singlet
                ;;

                *)
                echo -e "\nInvalid Combination! \n"
                ;;
        esac
}

# Calling the main function
main

