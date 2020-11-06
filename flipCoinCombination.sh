#! /bin/bash

#Display
disp()
{
        echo
        read -p "Enter how many times you want to flip the coin/s : " flip
        echo -e "\nSelect one combinations from bellow:----"
        echo -e "1. Singlet \n2. Doublet \n3. Triplet \n"
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

#Triplet
triplet()
{
        HHH=0   #HHH --> 0
        HHT=0   #HHT --> 1
        HTH=0   #HTH --> 2
        HTT=0   #HTT --> 3
        THH=0   #THH --> 4
        THT=0   #THT --> 5
        TTH=0   #TTH --> 6
        TTT=0   #TTT --> 7

        # Flip coin & Count values
        for (( i=0; i<$flip; i++ ))
        do
                val=$((RANDOM % 8))

                case $val in
                        0)
                        HHH=`expr $HHH + 1`
                        ;;

                        1)
                        HHT=`expr $HHT + 1`
                        ;;

                        2)
                        HTH=`expr $HTH + 1`
                        ;;

                        3)
                        HTT=`expr $HTT + 1`
                        ;;

                        4)
                        THH=`expr $THH + 1`
                        ;;

                        5)
                        THT=`expr $THT + 1`
                        ;;

                        6)
                        TTH=`expr $TTH + 1`
                        ;;

                        7)
                        TTT=`expr $TTT + 1`
                        ;;
                esac

        done

        # Print Values
        echo "HHH=$HHH    HHT=$HHT    HTH=$HTH    HTT=$HTT    THH=$THH    THT=$THT    TTH=$TTH    TTT=$TTT"

        #Disclose the Winner and Calculate the Winning Percentage
        winPer=`expr $HHH + $HHT + $HTH + $HTT + $THH + $THT + $TTH + $TTT`

        if (( $HHH>=$HHT && $HHH>=$HTH && $HHH>=$HTT && $HHH>=$THH && $HHH>=$THT && $HHH>=$TTH && $HHH>=$TTT ))
        then
                echo -e "\nHHH is Won!"
                winPer=`echo $HHH $winPer | awk "{print $HHH / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $HHT>=$HHH && $HHT>=$HTH && $HHT>=$HTT && $HHT>=$THH && $HHT>=$THT && $HHT>=$TTH && $HHT>=$TTT ))
        then
                echo -e "\nHHT is Won!"
                winPer=`echo $HHT $winPer | awk "{print $HHT / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $HTH>=$HHH && $HTH>=$HHT && $HTH>=$HTT && $HTH>=$THH && $HTH>=$THT && $HTH>=$TTH && $HTH>=$TTT ))
        then
                echo -e "\nHTH is Won!"
                winPer=`echo $HTH $winPer | awk "{print $HTH / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $HTT>=$HHH && $HTT>=$HHT && $HTT>=$HTH && $HTT>=$THH && $HTT>=$THT && $HTT>=$TTH && $HTT>=$TTT ))
        then
                echo -e "\nHTT is Won!"
                winPer=`echo $HTT $winPer | awk "{print $HTT / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $THH>=$HHH && $THH>=$HHT && $THH>=$HTT && $THH>=$HTT && $THH>=$THT && $THH>=$TTH && $THH>=$TTT ))
        then
                echo -e "\nTHH is Won!"
                winPer=`echo $THH $winPer | awk "{print $THH / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $THT>=$HHH && $THT>=$HHT && $THT>=$HTT && $THT>=$HTT && $THT>=$THH && $THT>=$TTH && $THT>=$TTT ))
        then
                echo -e "\nTHT is Won!"
                winPer=`echo $THT $winPer | awk "{print $THT / $winPer * 100}"`
                echo -e "\nWinning Percentage : $winPer%"

        elif (( $TTT>=$HHH && $TTT>=$HHT && $TTT>=$HTT && $TTT>=$HTT && $TTT>=$THH && $TTT>=$THT && $TTT>=$TTH ))
        then
                echo -e "\nTTT is Won!"
                winPer=`echo $TTT $winPer | awk "{print $TTT / $winPer * 100}"`
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

                3)
                echo -e "\nYou are in Triplet Combination \n"
                triplet
                ;;

                *)
                echo -e "\nInvalid Combination! \n"
                ;;
        esac
}

# Calling the main function
main

