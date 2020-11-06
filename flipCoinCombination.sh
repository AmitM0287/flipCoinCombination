#! /bin/bash

#Display
disp()
{
        echo
        read -p "Enter how many times you want to flip the coin/s : " flip
        echo -e "\nSelect one combinations from bellow:----"
        echo -e "1. Singlet \n2. Doublet \n"
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

#Doublet
doublet()
{
        HH=0    #HH --> 0
        HT=0    #HT --> 1
        TH=0    #TH --> 2
        TT=0    #TT --> 3

        # Flip coin & Count values
        for (( i=0; i<$flip; i++ ))
        do
                val=$((RANDOM % 4))

                case $val in
                        0)
                        HH=`expr $HH + 1`
                        ;;

                        1)
                        HT=`expr $HT + 1`
                        ;;

                        2)
                        TH=`expr $TH + 1`
                        ;;

                        3)
                        TT=`expr $TT + 1`
                        ;;
                esac
        done

        # Print Values
        echo "HH=$HH    HT=$HT    TH=$TH    TT=$TT"

        #Disclose the Winner and Calculate the Winning Percentage
        winPer=`expr $HH + $HT + $TH + $TT`

        if (( $HH>=$HT && $HH>=$TH && $HH>=$TT ))
        then
                echo -e "\nHH is Won!"
                winPer=`echo $HH $winPer | awk "{print $HH / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $HT>=$HH && $HT>=$TH && $HT>=$TT ))
        then
                echo -e "\nHT is Won!"
                winPer=`echo $HT $winPer | awk "{print $HT / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $TH>=$HH && $TH>=$HT && $TH>=$TT ))
        then
                echo -e "\nTH is Won!"
                winPer=`echo $TH $winPer | awk "{print $TH / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $TT>=$HH && $TT>=$HT && $TT>=$TH ))
        then
                echo -e "\nTT is Won!"
                winPer=`echo $TT $winPer | awk "{print $TT / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

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

		2)
                echo -e "\nYou are in Doublet Combination \n"
                doublet
                ;;

                *)
                echo -e "\nInvalid Combination! \n"
                ;;
        esac
}

# Calling the main function
main

